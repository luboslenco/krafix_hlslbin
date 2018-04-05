static float4 gl_Position;
static float3 pos;

struct SPIRV_Cross_Input
{
    float3 pos : TEXCOORD0;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    gl_Position = float4(pos, 1.0f);
    gl_Position.z = (gl_Position.z + gl_Position.w) * 0.5;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    pos = stage_input.pos;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    return stage_output;
}
