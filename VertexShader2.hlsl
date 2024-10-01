// an ultra simple hlsl vertex shader
struct VERTEX
{
    float2 pos : POSITION;
    float4 colour : COLOR;
};

struct VERTEX_OUTPUT
{
    float4 pos : SV_POSITION;
    float4 colour : COLOR;
    //[[vk::builtin("PointSize")]] // uncomment for point size
    //float PointSize : POINT_SIZE; // uncomment for point size
};

VERTEX_OUTPUT main(VERTEX input)
{
    VERTEX_OUTPUT output;
    output.pos = float4(input.pos, 0.0f, 1.0f);
    output.colour = input.colour;
    
    //output.PointSize = 2.0f; // uncomment for point size
    return output;
}