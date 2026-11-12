extends Node3D

var camera: Camera3D
var focus := Vector3(0, 4, 0)
var yaw := 0.55
var zoom := 330.0
var dragging := false
var panning := false

func _ready() -> void:
    var world := load("res://3D_assets/green_river_overworld/scenes/overworld_environment.tscn").instantiate()
    add_child(world)
    camera = Camera3D.new()
    camera.projection = Camera3D.PROJECTION_ORTHOGONAL
    camera.far = 1400
    add_child(camera)
    camera.current = true
    update_camera()

func update_camera() -> void:
    camera.size = zoom
    camera.position = focus + Vector3(sin(yaw), 1, cos(yaw)) * 440
    camera.look_at(focus)

func _unhandled_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_RIGHT: dragging = event.pressed
        if event.button_index == MOUSE_BUTTON_MIDDLE: panning = event.pressed
        if event.pressed and event.button_index == MOUSE_BUTTON_WHEEL_UP: zoom = maxf(18, zoom * 0.88)
        if event.pressed and event.button_index == MOUSE_BUTTON_WHEEL_DOWN: zoom = minf(600, zoom * 1.12)
    if event is InputEventMouseMotion:
        if dragging: yaw -= event.relative.x * 0.005
        if panning:
            focus += (-camera.global_basis.x * event.relative.x + Vector3(camera.global_basis.z.x, 0, camera.global_basis.z.z).normalized() * -event.relative.y) * zoom * 0.001
    update_camera()

