// SHaders which move (require timeline).

#include <metal_stdlib>
using namespace metal;



[[stitchable]] half4 spinningDividerLine(float2 pos, half4 color, float4 bounds, float t) {
    float2 uv = (pos - bounds.xy) / bounds.zw;

    // Needed for centering:
    float2 p = uv - float2(0.5f, 0.5f);

    float2 dir = float2(cos(t), sin(t));

    float s = dot(p, dir);
    return (s >= 0.0h)
        ? half4(1.0h, 0.0h, 0.0h, color.a)
        : half4(0.0h, 0.0h, 1.0h, color.a);
}



[[stitchable]] half4 spinningGradient(float2 pos, half4 color, float4 bounds, float t) {
    float2 uv = (pos - bounds.xy) / bounds.zw;
    float2 p = uv - float2(0.5f, 0.5f);
    float2 dir = float2(cos(t), sin(t));

    float s = dot(p, dir);
    
    float dist = length(p) / (0.5f);
    float distFromCircleEdge = min(1.0f - dist  + 0.2f, 1.0f);
    
    float alpha = max(color.a * distFromCircleEdge - 0.2f, 0.0f);
    
    return (s >= 0.0h)
        ? half4(1.0h, 0.0h, 0.0h, alpha)
        : half4(0.0h, 0.0h, 1.0h, alpha);
}



[[stitchable]] half4 rainbowFlash(float2 pos, half4 color, float4 bounds, float t) {
    float3 rgb = 0.5f + 0.5f * cos(2.0f * M_PI_F * (t + float3(0.0f, 0.33f, 0.67f)));
    return half4(half(rgb.r), half(rgb.g), half(rgb.b), color.a);
}
