extends Node3D

func _ready() -> void:
    var items = [["cottage_a", Vector3(-8,0,1)], ["stone_bridge",Vector3(6,-0.5,0)], ["tree_broadleaf_a",Vector3(-6,0,-8)], ["riverbank_straight",Vector3(4,0,-7)]]
    for item in items:
        var model = load("res://3D_assets/starter_valley/models/valley_" + item[0] + ".glb").instantiate()
        add_child(model)
        model.position = item[1]
    var env = WorldEnvironment.new()
    env.environment = Environment.new()
    env.environment.background_mode = Environment.BG_COLOR
    env.environment.background_color = Color("a6c8d2")
    env.environment.ambient_light_source = Environment.AMBIENT_SOURCE_COLOR
    env.environment.ambient_light_color = Color("e3ecdd")
    env.environment.ambient_light_energy = 0.65
    env.environment.tonemap_mode = Environment.TONE_MAPPER_FILMIC
    add_child(env)
    var sun = DirectionalLight3D.new()
    sun.rotation_degrees = Vector3(-48,-35,0)
    sun.light_color = Color("fff0d6")
    sun.light_energy = 1.7
    sun.shadow_enabled = true
    add_child(sun)
    var plane = MeshInstance3D.new()
    plane.mesh = PlaneMesh.new()
    plane.mesh.size = Vector2(45,34)
    plane.position.y=-0.54
    var mat = StandardMaterial3D.new()
    mat.albedo_texture=load("res://3D_assets/starter_valley/textures/valley_grass.png")
    mat.uv1_scale=Vector3(15,11,1)
    mat.roughness=0.95
    plane.material_override=mat
    add_child(plane)
    var cam=Camera3D.new()
    add_child(cam)
    cam.projection=Camera3D.PROJECTION_ORTHOGONAL
    cam.size=30
    cam.position=Vector3(21,25,30)
    cam.look_at(Vector3(0,1,-1))
    cam.current=true
    for i in range(15): await get_tree().process_frame
    if "--capture" in OS.get_cmdline_user_args():
        await RenderingServer.frame_post_draw
        get_viewport().get_texture().get_image().save_png("res://3D_assets/starter_valley/review/godot_benchmark.png")
        print("BENCHMARK_CAPTURE_OK")
        get_tree().quit()
