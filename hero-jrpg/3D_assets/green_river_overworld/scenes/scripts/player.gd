extends CharacterBody3D

@export var walk_speed := 6.0
@export var run_speed := 9.0
@export var step_height := 0.22
var controls_enabled := true
var camera_yaw := 0.55
var test_direction := Vector2.ZERO
var use_test_direction := false
var test_running := false
var safe_position := Vector3.ZERO
var bounds_x := 160.0
var bounds_z := 140.0
var phase := 0.0
var limbs: Dictionary = {}
@onready var visual: Node3D = $Visual

func _ready() -> void:
    var bindings := {"move_left": [KEY_A, KEY_LEFT], "move_right": [KEY_D, KEY_RIGHT], "move_forward": [KEY_W, KEY_UP], "move_back": [KEY_S, KEY_DOWN], "run": [KEY_SHIFT]}
    for action in bindings:
        if not InputMap.has_action(action): InputMap.add_action(action)
        for key in bindings[action]:
            var event := InputEventKey.new()
            event.physical_keycode = key
            if not InputMap.action_has_event(action, event): InputMap.action_add_event(action, event)
    floor_snap_length = 0.32
    floor_max_angle = deg_to_rad(42)
    safe_position = global_position
    for part in ["LeftArm", "RightArm", "LeftLeg", "RightLeg"]:
        var found = visual.find_children("*" + part + "Pivot*", "Node3D", true, false)
        if not found.is_empty(): limbs[part] = found[0]

func ground_at(point: Vector3, lift := 0.55, depth := 2.0) -> Dictionary:
    var query := PhysicsRayQueryParameters3D.create(point + Vector3.UP * lift, point - Vector3.UP * depth, 1, [get_rid()])
    return get_world_3d().direct_space_state.intersect_ray(query)

func _physics_process(delta: float) -> void:
    var input := test_direction if use_test_direction else Input.get_vector("move_left", "move_right", "move_forward", "move_back")
    if not controls_enabled: input = Vector2.ZERO
    input = input.limit_length()
    var direction := Basis(Vector3.UP, camera_yaw) * Vector3(input.x, 0, input.y)
    var running := test_running if use_test_direction else Input.is_action_pressed("run")
    var speed := run_speed if running else walk_speed
    var motion := direction * speed * delta
    if direction.length_squared() > 0.001 and is_on_floor():
        var landing := ground_at(global_position + motion + direction * 0.28)
        # A floor probe keeps the walking character on banks and bridge decks.
        if landing.is_empty() or landing.position.y < -0.25 or global_position.y - landing.position.y > 0.65:
            direction = Vector3.ZERO
            motion = Vector3.ZERO
        elif test_move(global_transform, motion):
            var raised := global_transform
            raised.origin.y += step_height
            if not test_move(raised, motion) and landing.position.y <= global_position.y + step_height + 0.02:
                global_position.y += step_height
                apply_floor_snap()
    velocity.x = direction.x * speed
    velocity.z = direction.z * speed
    velocity.y = -1.0 if is_on_floor() else velocity.y - 24.0 * delta
    move_and_slide()
    global_position.x = clampf(global_position.x, -bounds_x, bounds_x)
    global_position.z = clampf(global_position.z, -bounds_z, bounds_z)
    if is_on_floor() and global_position.y > -0.2: safe_position = global_position
    if global_position.y < -2.0:
        global_position = safe_position + Vector3.UP * 0.1
        velocity = Vector3.ZERO
    if direction.length_squared() > 0.001:
        visual.rotation.y = lerp_angle(visual.rotation.y, atan2(direction.x, direction.z), 12 * delta)
    var moving := Vector2(velocity.x, velocity.z).length() > 0.15 and controls_enabled
    if moving: phase += delta * (13.0 if running else 9.0)
    var swing := sin(phase) * (0.48 if running else 0.32) if moving else 0.0
    for part in limbs:
        var sign_value := -1.0 if part in ["LeftArm", "RightLeg"] else 1.0
        limbs[part].rotation.x = lerpf(limbs[part].rotation.x, swing * sign_value, minf(1, delta * 18))

func place_at(point: Vector3) -> void:
    global_position = point
    velocity = Vector3.ZERO
    safe_position = point

