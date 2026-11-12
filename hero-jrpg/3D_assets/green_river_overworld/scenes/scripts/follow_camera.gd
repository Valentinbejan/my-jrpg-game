extends Node3D

var target: Node3D
var yaw := 0.55
var zoom := 28.0
var controls_enabled := true
var orbiting := false
var distance := 30.0
var focus := Vector3.ZERO
@onready var camera: Camera3D = $Camera3D

func _ready() -> void:
    camera.projection = Camera3D.PROJECTION_ORTHOGONAL
    camera.far = 700
    camera.current = true
    if target: snap_to_target()

func snap_to_target() -> void:
    if target: focus = target.global_position + Vector3.UP * 0.8
    update_camera()

func update_camera() -> void:
    camera.size = zoom
    var offset := Vector3(sin(yaw), 1.0, cos(yaw)) * distance
    # Keep the 45-degree view while bringing the camera in front of hills.
    # Orthographic size stays unchanged as the camera moves along its boom.
    if is_inside_tree() and distance <= 60:
        var query := PhysicsRayQueryParameters3D.create(focus, focus + offset, 1)
        var space := get_world_3d().direct_space_state
        var hit := space.intersect_ray(query)
        # The desired camera may already lie inside an outer hill. Check the
        # reverse direction as well so triangle sidedness cannot hide that hill.
        var reverse := space.intersect_ray(PhysicsRayQueryParameters3D.create(focus + offset, focus, 1))
        if not reverse.is_empty() and (hit.is_empty() or focus.distance_to(reverse.position) < focus.distance_to(hit.position)):
            hit = reverse
        if not hit.is_empty():
            var clear_length := maxf(1.5, focus.distance_to(hit.position) - 0.7)
            offset = offset.normalized() * minf(offset.length(), clear_length)
    camera.global_position = focus + offset
    camera.look_at(focus)

func _process(delta: float) -> void:
    if target:
        focus = focus.lerp(target.global_position + Vector3.UP * 0.8, 1 - exp(-8 * delta))
        target.camera_yaw = yaw
    update_camera()

func _unhandled_input(event: InputEvent) -> void:
    if not controls_enabled:
        orbiting = false
        return
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_RIGHT: orbiting = event.pressed
        if event.pressed and event.button_index == MOUSE_BUTTON_WHEEL_UP: zoom = clampf(zoom - 2, 18, 44)
        if event.pressed and event.button_index == MOUSE_BUTTON_WHEEL_DOWN: zoom = clampf(zoom + 2, 18, 44)
    if event is InputEventMouseMotion and orbiting:
        yaw -= event.relative.x * 0.006

