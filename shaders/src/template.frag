#version 440
#include "../lib/utils.glsl"

out vec4 fragColor;
uniform float u_time;
uniform vec2 u_resolution;

void main() {
   vec2 uv = gl_FragCoord.xy / u_resolution;
   uv.x *= u_resolution.x / u_resolution.y;

   fragColor = vec4(uv.x, uv.y, .0, 1.0);
}
