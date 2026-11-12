extends Node3D

@onready var camera: Camera3D = $ReviewCamera
var focus := Vector3(0, 2, 0)
var yaw := 0.68
var pitch := PI / 4.0
var zoom := 108.0
var orbiting := false
var panning := false
var caption: Label
var sample_times: Array[float] = []
var previous_usec := 0
var capture_camera: Camera3D

func _ready() -> void:
    _make_overlay()
    _update_camera()
    if "--review-capture" in OS.get_cmdline_user_args():
        _capture_review()

func _make_overlay() -> void:
    var canvas := CanvasLayer.new()
    canvas.name = "ValleyOverlay"
    add_child(canvas)
    var title := Label.new()
    title.position = Vector2(32, 25)
    title.text = "G R E E N   R I V E R   V A L L E Y"
    title.add_theme_font_size_override("font_size", 16)
    title.add_theme_color_override("font_color", Color("fff0cd"))
    title.add_theme_color_override("font_shadow_color", Color(0.07,0.12,0.10,0.9))
    title.add_theme_constant_override("shadow_offset_x", 2)
    title.add_theme_constant_override("shadow_offset_y", 2)
    canvas.add_child(title)
    caption = Label.new()
    caption.position = Vector2(32, 53)
    caption.text = "Reedbridge & Millbrook"
    caption.add_theme_font_size_override("font_size", 30)
    caption.add_theme_color_override("font_color", Color("fff9e9"))
    caption.add_theme_color_override("font_shadow_color", Color(0.07,0.12,0.10,0.9))
    caption.add_theme_constant_override("shadow_offset_x", 2)
    caption.add_theme_constant_override("shadow_offset_y", 2)
    canvas.add_child(caption)
    var bar := PanelContainer.new()
    canvas.add_child(bar)
    bar.set_anchors_and_offsets_preset(Control.PRESET_BOTTOM_WIDE)
    bar.offset_left=24
    bar.offset_right=-24
    bar.offset_top=-54
    bar.offset_bottom=-16
    var style := StyleBoxFlat.new()
    style.bg_color = Color(0.07,0.13,0.11,0.82)
    style.corner_radius_top_left=7
    style.corner_radius_top_right=7
    style.corner_radius_bottom_left=7
    style.corner_radius_bottom_right=7
    style.content_margin_left=15
    style.content_margin_right=15
    style.content_margin_top=9
    style.content_margin_bottom=9
    bar.add_theme_stylebox_override("panel",style)
    var help := Label.new()
    help.text="Right drag: orbit    •    Middle drag / WASD: pan    •    Wheel: zoom    •    1–4: viewpoints    •    Space: pause wheel    •    Tab: hide labels"
    help.add_theme_font_size_override("font_size",14)
    help.add_theme_color_override("font_color",Color("e4e4c8"))
    bar.add_child(help)

func _unhandled_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_RIGHT: orbiting = event.pressed
        if event.button_index == MOUSE_BUTTON_MIDDLE: panning = event.pressed
        if event.pressed and event.button_index == MOUSE_BUTTON_WHEEL_UP: zoom = maxf(13, zoom * 0.89)
        if event.pressed and event.button_index == MOUSE_BUTTON_WHEEL_DOWN: zoom = minf(150, zoom * 1.12)
    if event is InputEventMouseMotion:
        if orbiting:
            yaw -= event.relative.x * 0.005
            pitch = clampf(pitch + event.relative.y * 0.004, deg_to_rad(22), deg_to_rad(72))
        if panning:
            focus += (-camera.global_basis.x * event.relative.x + Vector3(camera.global_basis.z.x,0,camera.global_basis.z.z).normalized() * -event.relative.y) * zoom * 0.0014
    if event is InputEventKey and event.pressed and not event.echo:
        match event.keycode:
            KEY_1: _preset(1)
            KEY_2: _preset(2)
            KEY_3: _preset(3)
            KEY_4, KEY_HOME: _preset(4)
            KEY_TAB: $ValleyOverlay.visible = not $ValleyOverlay.visible
            KEY_SPACE: get_tree().root.set_meta("valley_motion_paused", not get_tree().root.get_meta("valley_motion_paused",false))

func _process(delta: float) -> void:
    var movement := Vector2(float(Input.is_physical_key_pressed(KEY_D))-float(Input.is_physical_key_pressed(KEY_A)), float(Input.is_physical_key_pressed(KEY_S))-float(Input.is_physical_key_pressed(KEY_W)))
    focus += (Vector3(cos(yaw),0,-sin(yaw))*movement.x + Vector3(sin(yaw),0,cos(yaw))*movement.y) * delta * zoom * 0.45
    _update_camera()

func _update_camera() -> void:
    camera.size = zoom
    camera.position = focus + Vector3(sin(yaw)*cos(pitch),sin(pitch),cos(yaw)*cos(pitch))*130
    camera.look_at(focus)
    if is_instance_valid(capture_camera):
        capture_camera.transform=camera.transform
        capture_camera.size=camera.size

func _preset(which: int) -> void:
    pitch = PI/4.0
    yaw=0.68
    match which:
        1:
            focus=Vector3(-28,2,15);zoom=34;caption.text="Reedbridge"
        2:
            focus=Vector3(-0.8,2,-22);zoom=27;caption.text="Millbrook · The riverside mill"
        3:
            focus=Vector3(-4.5,0,18);zoom=23;caption.text="The old stone crossing"
        _:
            focus=Vector3(0,2,0);zoom=108;caption.text="Reedbridge & Millbrook"

func _capture_review() -> void:
    DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
    # A fixed render target makes the review independent of Windows display scaling.
    var review_view=SubViewport.new()
    review_view.name="Fixed1080pReview"
    review_view.size=Vector2i(1920,1080)
    review_view.world_3d=get_world_3d()
    review_view.render_target_update_mode=SubViewport.UPDATE_ALWAYS
    add_child(review_view)
    capture_camera=camera.duplicate()
    review_view.add_child(capture_camera)
    capture_camera.current=true
    get_viewport().disable_3d=true
    $ValleyOverlay.visible=false
    var display=TextureRect.new()
    display.texture=review_view.get_texture()
    display.expand_mode=TextureRect.EXPAND_IGNORE_SIZE
    display.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
    add_child(display)
    if RenderingServer.has_method("viewport_set_measure_render_time"):
        RenderingServer.call("viewport_set_measure_render_time",review_view.get_viewport_rid(),true)
    for i in range(90): await get_tree().process_frame
    var dir := "res://3D_assets/starter_valley/review/"
    var stats := {}
    for which in [4,1,2,3]:
        _preset(which)
        for i in range(20): await get_tree().process_frame
        await RenderingServer.frame_post_draw
        review_view.get_texture().get_image().save_png(dir + "godot_view_%d.png" % which)
    _preset(4)
    for angle in range(8):
        yaw=TAU*angle/8.0
        for i in range(12): await get_tree().process_frame
        await RenderingServer.frame_post_draw
        review_view.get_texture().get_image().save_png(dir + "godot_orbit_%d.png" % angle)
    yaw=0.68
    for i in range(30): await get_tree().process_frame
    var started := Time.get_ticks_usec()
    for i in range(180): await get_tree().process_frame
    var ms := (Time.get_ticks_usec()-started)/1000.0/180.0
    stats["average_frame_ms"]=ms
    stats["measured_fps"]=1000.0/ms
    stats["draw_calls"]=Performance.get_monitor(Performance.RENDER_TOTAL_DRAW_CALLS_IN_FRAME)
    stats["rendered_primitives"]=Performance.get_monitor(Performance.RENDER_TOTAL_PRIMITIVES_IN_FRAME)
    stats["gpu"]=RenderingServer.get_video_adapter_name()
    stats["render_target_pixels"]=str(review_view.get_texture().get_size())
    stats["logical_viewport"]=str(get_viewport().get_visible_rect().size)
    if RenderingServer.has_method("viewport_get_measured_render_time_gpu"):
        stats["gpu_render_ms"]=RenderingServer.call("viewport_get_measured_render_time_gpu",review_view.get_viewport_rid())
        stats["cpu_render_ms"]=RenderingServer.call("viewport_get_measured_render_time_cpu",review_view.get_viewport_rid())
    stats["godot_version"]=Engine.get_version_info()
    var f:=FileAccess.open(dir+"performance.json",FileAccess.WRITE)
    f.store_string(JSON.stringify(stats,"  "))
    print("VALLEY_REVIEW_COMPLETE ",JSON.stringify(stats))
    set_process(false)
    for child in get_children():child.queue_free()
    await get_tree().process_frame
    await get_tree().process_frame
    get_tree().quit()
