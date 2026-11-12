extends Node3D

var wheels: Array[Node3D] = []

func _ready() -> void:
    for item in find_children("*WaterwheelPivot*", "Node3D", true, false):
        wheels.append(item)

func _process(delta: float) -> void:
    if get_tree().root.has_meta("valley_motion_paused") and get_tree().root.get_meta("valley_motion_paused"):
        return
    for wheel in wheels:
        wheel.rotate_x(delta * 0.22)
