// Shaders which do not move (no timeline required).

#include <metal_stdlib>
using namespace metal;



[[ stitchable ]] half4 solidPurple(float2 pos, half4 color) {
    return half4(1, 0, 1, color.a);
}



[[ stitchable ]] half4 invertAlpha(float2 pos, half4 color) {
    color.a = 1 - color.a;
    return color;
}



[[ stitchable ]] half4 blueRedGradient(float2 pos, half4 color) {
    return half4(pos.y/pos.x, 0, pos.x/pos.y, color.a);
}
