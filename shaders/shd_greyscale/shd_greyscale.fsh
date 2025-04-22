varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec4 baseColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = dot(baseColor.rgb, vec3(0.299, 0.587, 0.114));
    gl_FragColor = vec4(vec3(gray), baseColor.a);
}