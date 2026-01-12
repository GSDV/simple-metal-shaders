// Shaders that distort.

#include <metal_stdlib>
using namespace metal;



[[stitchable]] float2 waterWave(float2 pos, float t) {
    pos.y += sin(t*5.0f + pos.y/7.0f) * 2.0f;
    return pos;
}


[[stitchable]] float2 flagWave(float2 pos, float4 bounds, float t) {
    float2 size = bounds.zw;
    float2 distance = pos / size;
    pos.y += sin(t * 5.0f - pos.x / 20.0f) * distance.x * 10.0f;
    return pos;
}

