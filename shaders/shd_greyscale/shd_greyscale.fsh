varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_sampler;

void main() {
    vec4 color = texture2D(u_sampler, v_vTexcoord);
    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    gl_FragColor = vec4(gray, gray, gray, color.a) * v_vColour;
}
