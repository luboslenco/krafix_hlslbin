static float4 fragColor;

struct SPIRV_Cross_Output
{
    float4 fragColor : SV_Target0;
};

void frag_main()
{
    fragColor = float4(1.0f, 0.0f, 0.0f, 1.0f);
}

SPIRV_Cross_Output main()
{
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.fragColor = fragColor;
    return stage_output;
}
