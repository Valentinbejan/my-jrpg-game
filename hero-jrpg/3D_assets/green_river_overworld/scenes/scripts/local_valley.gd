extends Node3D

const SOURCE := "res://3D_assets/starter_valley/scenes/starter_valley_preview.tscn"

func _ready() -> void:
    var environment := load(SOURCE).instantiate() as Node3D
    environment.set_script(null)
    var review_camera := environment.get_node_or_null("ReviewCamera")
    if review_camera: review_camera.free()
    add_child(environment)
    var scenery := load("res://3D_assets/green_river_overworld/scenes/overworld_terrain.tscn").instantiate() as Node3D
    scenery.name = "DistantValleyScenery"
    scenery.position.y = -4
    for body in scenery.find_children("*", "StaticBody3D", true, false):
        body.collision_layer = 0
        body.collision_mask = 0
    add_child(scenery)
    for side in [-1, 1]:
        for i in range(5):
            var water := load("res://3D_assets/starter_valley/scenes/valley_water_straight.tscn").instantiate() as Node3D
            water.position = Vector3(5.8 * sin(side * 56.0 / 20.0), -1.02, side * (60 + i * 8))
            add_child(water)
    var exit_sign := load("res://3D_assets/starter_valley/scenes/valley_signpost.tscn").instantiate() as Node3D
    exit_sign.position = Vector3(-12, 0.35, 48)
    add_child(exit_sign)

