extends Node

var overworld_return := Vector3(-28, 1.0, 27.8)
var overworld_yaw := 0.55
var overworld_zoom := 28.0
var last_destination := "reedbridge"
var in_adventure := false

func remember(destination: Area3D, camera: Node3D) -> void:
    overworld_return = destination.return_point
    overworld_yaw = camera.yaw
    overworld_zoom = camera.zoom
    last_destination = destination.stable_id
    in_adventure = true

