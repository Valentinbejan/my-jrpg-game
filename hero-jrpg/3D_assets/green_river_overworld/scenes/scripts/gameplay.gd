extends Node3D

const BASE := "res://3D_assets/green_river_overworld/"
const DESTINATION := preload("res://3D_assets/green_river_overworld/scenes/scripts/destination.gd")
var environment: Node3D
var destinations: Array[Area3D] = []
var nearby: Area3D
var modal_open := false
var changing := false
var review_runner: RefCounted
var prompt: Label
var region_label: Label
var overlay: Control
var title: Label
var description: Label
var return_button: Button
@onready var player: CharacterBody3D = $Player
@onready var camera: Node3D = $FollowCamera
@onready var travel: Node = $TravelController

func _ready() -> void:
    bind_controls()
    make_ui()
    camera.target = player
    await show_overworld(false)
    if "--overworld-capture" in OS.get_cmdline_user_args():
        review_runner = load(BASE + "review/tools/capture_game.gd").new()
        await review_runner.run(self)

func bind_controls() -> void:
    var keys := {"move_left": [KEY_A, KEY_LEFT], "move_right": [KEY_D, KEY_RIGHT], "move_forward": [KEY_W, KEY_UP], "move_back": [KEY_S, KEY_DOWN], "run": [KEY_SHIFT], "enter_destination": [KEY_E], "pause_game": [KEY_ESCAPE]}
    for action in keys:
        if not InputMap.has_action(action): InputMap.add_action(action)
        for key in keys[action]:
            var event := InputEventKey.new()
            event.physical_keycode = key
            if not InputMap.action_has_event(action, event): InputMap.action_add_event(action, event)

func add_destination(data: Dictionary) -> void:
    var marker := Area3D.new()
    marker.set_script(DESTINATION)
    marker.name = data.id
    marker.configure(data)
    environment.add_child(marker)
    destinations.append(marker)

func clear_environment() -> void:
    nearby = null
    destinations.clear()
    if is_instance_valid(environment):
        remove_child(environment)
        environment.queue_free()

func show_overworld(returning: bool) -> void:
    changing = true
    player.controls_enabled = false
    clear_environment()
    environment = load(BASE + "scenes/overworld_environment.tscn").instantiate()
    add_child(environment)
    var entries = JSON.parse_string(FileAccess.get_file_as_string(BASE + "scenes/destinations.json"))
    for data in entries: add_destination(data)
    travel.in_adventure = false
    player.bounds_x = 160
    player.bounds_z = 140
    var spawn: Vector3 = travel.overworld_return if returning else Vector3(-28, 2, 27.8)
    player.place_at(spawn + Vector3.UP * 0.12)
    if returning:
        camera.yaw = travel.overworld_yaw
        camera.zoom = travel.overworld_zoom
    camera.snap_to_target()
    region_label.text = "Green River Valley"
    await get_tree().physics_frame
    await get_tree().physics_frame
    settle_player()
    changing = false
    player.controls_enabled = true

func settle_player() -> void:
    var floor_hit: Dictionary = player.ground_at(player.global_position, 40, 80)
    if not floor_hit.is_empty(): player.place_at(floor_hit.position + Vector3.UP * 0.025)
    camera.snap_to_target()

func enter_adventure(destination: Area3D) -> void:
    if changing: return
    changing = true
    player.controls_enabled = false
    travel.remember(destination, camera)
    var target: String = destination.target_scene
    clear_environment()
    environment = load(target).instantiate()
    add_child(environment)
    add_destination({"id": "south_road", "display_name": "Return to Green River Valley", "kind": "return", "position": [-14.72, 0.3, 48], "radius": 2.8})
    player.bounds_x = 62
    player.bounds_z = 52
    player.place_at(Vector3(-15.58, 2, 43.5))
    camera.zoom = 28
    camera.snap_to_target()
    region_label.text = "Reedbridge–Millbrook"
    await get_tree().physics_frame
    await get_tree().physics_frame
    settle_player()
    changing = false
    player.controls_enabled = true

func _process(_delta: float) -> void:
    if changing or modal_open: return
    nearby = null
    var best := INF
    for marker in destinations:
        if marker.overlaps_body(player):
            var distance := marker.global_position.distance_squared_to(player.global_position)
            if distance < best:
                best = distance
                nearby = marker
    prompt.text = (nearby.display_name + "   ·   E to enter") if nearby else ""

func _unhandled_input(event: InputEvent) -> void:
    if event.is_action_pressed("pause_game") and not event.is_echo():
        if modal_open: close_modal()
        else: open_modal("Paused", "", "Resume")
        get_viewport().set_input_as_handled()
    if event.is_action_pressed("enter_destination") and not event.is_echo() and not modal_open and not changing and is_instance_valid(nearby):
        activate_destination(nearby)
        get_viewport().set_input_as_handled()

func activate_destination(destination: Area3D) -> void:
    match destination.destination_type:
        "adventure": enter_adventure(destination)
        "return": show_overworld(true)
        "town": open_modal(destination.display_name, "", "Return to the valley")
        "dungeon": open_modal(destination.display_name, "This adventure is not available yet.", "Return to the valley")
        "region_exit": open_modal(destination.display_name, "Travel to this region is not available yet.", "Return to the valley")

func open_modal(label: String, body: String, button: String) -> void:
    modal_open = true
    player.controls_enabled = false
    player.velocity = Vector3.ZERO
    camera.controls_enabled = false
    camera.orbiting = false
    title.text = label
    description.text = body
    description.visible = not body.is_empty()
    return_button.text = button
    overlay.show()
    prompt.hide()
    return_button.grab_focus()

func close_modal() -> void:
    modal_open = false
    player.controls_enabled = true
    camera.controls_enabled = true
    overlay.hide()
    prompt.show()

func label_style(label: Label, size: int) -> void:
    label.add_theme_font_size_override("font_size", size)
    label.add_theme_color_override("font_color", Color("fff4d7"))
    label.add_theme_color_override("font_shadow_color", Color("18382d"))
    label.add_theme_constant_override("shadow_offset_x", 2)
    label.add_theme_constant_override("shadow_offset_y", 2)

func make_ui() -> void:
    var canvas := CanvasLayer.new()
    canvas.name = "TravelInterface"
    add_child(canvas)
    region_label = Label.new()
    region_label.position = Vector2(24, 18)
    label_style(region_label, 23)
    canvas.add_child(region_label)
    var help := Label.new()
    help.position = Vector2(24, 49)
    help.text = "WASD / arrows   ·   Shift to run   ·   Right drag to rotate   ·   Wheel to zoom   ·   Esc"
    label_style(help, 14)
    canvas.add_child(help)
    prompt = Label.new()
    canvas.add_child(prompt)
    prompt.set_anchors_and_offsets_preset(Control.PRESET_BOTTOM_WIDE)
    prompt.offset_top = -65
    prompt.offset_bottom = -25
    prompt.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    label_style(prompt, 22)
    overlay = ColorRect.new()
    overlay.color = Color(0.04, 0.09, 0.07, 0.72)
    canvas.add_child(overlay)
    overlay.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
    var center := CenterContainer.new()
    overlay.add_child(center)
    center.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
    var panel := PanelContainer.new()
    center.add_child(panel)
    var style := StyleBoxFlat.new()
    style.bg_color = Color("183a30")
    style.border_color = Color("c6ab69")
    style.set_border_width_all(2)
    style.set_corner_radius_all(12)
    style.content_margin_left = 48
    style.content_margin_right = 48
    style.content_margin_top = 36
    style.content_margin_bottom = 36
    panel.add_theme_stylebox_override("panel", style)
    var stack := VBoxContainer.new()
    stack.add_theme_constant_override("separation", 24)
    panel.add_child(stack)
    title = Label.new()
    label_style(title, 32)
    title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    stack.add_child(title)
    description = Label.new()
    label_style(description, 19)
    description.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    stack.add_child(description)
    return_button = Button.new()
    return_button.custom_minimum_size = Vector2(340, 48)
    return_button.add_theme_font_size_override("font_size", 20)
    return_button.pressed.connect(close_modal)
    stack.add_child(return_button)
    overlay.hide()

