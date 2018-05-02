Shader "Custom/ShadowDrawer"
{
    Properties
    {
        _Color ("Shadow Color", Color) = (0, 0, 0, 0.6)
    }

    CGINCLUDE

    #include "UnityCG.cginc"
    #include "AutoLight.cginc"

    struct v2f_shadow {
        float4 pos : SV_POSITION;
        float3 worldPos : TEXCOORD0;
        UNITY_LIGHTING_COORDS(1, 2)
    };

    half4 _Color;

    v2f_shadow vert_shadow(appdata_full v)
    {
        v2f_shadow o;
        o.pos = UnityObjectToClipPos(v.vertex);
        o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
        UNITY_TRANSFER_LIGHTING(o, v.texcoord1);
        return o;
    }

    half4 frag_shadow(v2f_shadow IN) : SV_Target
    {
        UNITY_LIGHT_ATTENUATION(atten, IN, IN.worldPos);
        return half4(_Color.rgb, lerp(_Color.a, 0, atten));
    }

    ENDCG

    SubShader
    {
        Tags { "Queue"="AlphaTest+49" }

        // Depth fill pass
        Pass
        {
            ColorMask 0

            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag

            struct v2f {
                float4 pos : SV_POSITION;
            };

            v2f vert(appdata_full v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }

            half4 frag(v2f IN) : SV_Target
            {
                return (half4)0;
            }

            ENDCG
        }

        // Forward base pass
        Pass
        {
            Tags { "LightMode" = "ForwardBase" }
            Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
            #pragma vertex vert_shadow
            #pragma fragment frag_shadow
            #pragma multi_compile_fwdbase
            ENDCG
        }

        // Forward add pass
        Pass
        {
            Tags { "LightMode" = "ForwardAdd" }
            Blend SrcAlpha OneMinusSrcAlpha
            CGPROGRAM
            #pragma vertex vert_shadow
            #pragma fragment frag_shadow
            #pragma multi_compile_fwdadd_fullshadows
            ENDCG
        }
    }
    FallBack "Mobile/VertexLit"
}
