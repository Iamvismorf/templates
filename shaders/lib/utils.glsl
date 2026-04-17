// step(a, b) : b > a?

// smoothstep(a, b, x)
// x >= b return 1
// x <= a return 0

//mix(a, b, t):
// t = 0 return a, t = 1 return b; else interpolate

float PI = 3.1459;
float smin(float a, float b, float k) {
   float h = max(k - abs(a - b), 0.0) / k;
   // return min(a,b) - k*0.5*(1.0+h-sqrt(1.0-h*(h-2.0)));

   return min(a, b) - h * h * k * (1.0 / 4.0);
}

vec2 smin2D(in float a, in float b, in float k)
{
   float f1 = exp2(-k * a);
   float f2 = exp2(-k * b);
   return vec2(-log2(f1 + f2) / k, f2);
}

vec2 rotate2D(vec2 uv, float degree) {
   float rad = degree * PI / 180.0;
   return mat2(cos(rad), sin(rad), -sin(rad), cos(rad)) * uv;
}

float random(vec2 st) {
   return fract(sin(dot(st,
            vec2(12.9898, 78.233))) *
         43758.5453123);
}

float valueNoise(vec2 uv) {
   vec2 i = floor(uv);
   vec2 f = fract(uv);

   float bl = random(i);
   float tl = random(i + vec2(0.0, 1.0));
   float tr = random(i + vec2(1.0));
   float br = random(i + vec2(1.0, 0.0));

   vec2 smoothFunction = f * f * (3.0 - 2.0 * f);

   return mix(mix(bl, br, smoothFunction.x), mix(tl, tr, smoothFunction.x), smoothFunction.y);
}
