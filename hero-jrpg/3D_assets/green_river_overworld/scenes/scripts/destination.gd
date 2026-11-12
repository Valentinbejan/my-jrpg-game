extends Area3D

@export var stable_id := ""
@export var display_name := ""
@export_enum("adventure", "town", "dungeon", "region_exit", "return") var destination_type := "town"
@export_file("*.tscn") var target_scene := ""
@export var spawn_id := ""
@export var return_point := Vector3.ZERO

func configure(data: Dictionary) -> void:
    stable_id = data.id
    display_name = data.display_name
    destination_type = data.kind
    target_scene = data.get("target_scene", "")
    spawn_id = data.get("spawn_id", "")
    var p = data.position
    position = Vector3(p[0], p[1], p[2])
    var r = data.get("return_position", p)
    return_point = Vector3(r[0], r[1], r[2])
    collision_layer = 0
    collision_mask = 2
    var collision := CollisionShape3D.new()
    var cylinder := CylinderShape3D.new()
    cylinder.radius = data.get("radius", 2.2)
    cylinder.height = 4
    collision.shape = cylinder
    collision.position.y = 1.5
    add_child(collision)
    var label := Label3D.new()
    label.text = display_name
    label.position.y = 3.6
    label.billboard = BaseMaterial3D.BILLBOARD_ENABLED
    label.font_size = 42
    label.pixel_size = 0.009
    label.modulate = Color("fff7d9")
    label.outline_modulate = Color("183d32")
    label.outline_size = 9
    label.no_depth_test = false
    label.visibility_range_end = 75
    label.visibility_range_end_margin = 5
    add_child(label)
    var marker := MeshInstance3D.new()
    var ring := TorusMesh.new()
    ring.inner_radius = 0.58
    ring.outer_radius = 0.65
    ring.rings = 24
    ring.ring_segments = 6
    marker.mesh = ring
    marker.position.y = 0.075
    var mat := StandardMaterial3D.new()
    mat.albedo_color = Color("e6c778") if destination_type == "adventure" else Color("81cdb7")
    mat.roughness = 1
    marker.material_override = mat
    add_child(marker)

