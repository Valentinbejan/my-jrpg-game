shader_type spatial;
render_mode cull_disabled;
uniform sampler2D painted_water : source_color, repeat_enable, filter_linear_mipmap;
uniform float flow_speed = 0.018;
void vertex() {
    VERTEX.y += sin(VERTEX.x * 1.4 + TIME * 1.2) * 0.012;
}
void fragment() {
    vec2 flow_uv = UV + vec2(0.0, TIME * flow_speed);
    vec3 painted = texture(painted_water, flow_uv).rgb;
    ALBEDO = painted * vec3(0.72, 0.98, 0.95);
    ROUGHNESS = 0.40;
    SPECULAR = 0.35;
}
