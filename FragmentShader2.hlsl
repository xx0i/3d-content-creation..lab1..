// an ultra simple hlsl fragment shader

struct VERTEX_OUTPUT
{
    float4 pos : SV_POSITION;
    float4 colour : COLOR;
    //[[vk::builtin("PointSize")]] // uncomment for point size
    //float PointSize : POINT_SIZE; // uncomment for point size
};

float4 main(VERTEX_OUTPUT input) : SV_TARGET
{
    return input.colour;
}