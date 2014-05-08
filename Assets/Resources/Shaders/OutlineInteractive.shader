﻿Shader "Outlined/Interactive" {
    Properties {
        _Color ("Main Color", Color) = (1,1,1,1)
        _OutlineColor ("Outline Color", Color) = (1,1,1,1)
        _Outline ("Outline width", Range (0.0, 0.03)) = .005
        _MainTex ("Base (RGB)", 2D) = "white" { }
        _PlayerPos ("Player Position", Vector) = (0,0,0,0)
        _FadeDis ("Fade Distance", Float) = 15
    }
 
CGINCLUDE
#include "UnityCG.cginc"
 
struct appdata {
    float4 vertex : POSITION;
    float3 normal : NORMAL;
};
 
struct v2f {
    float4 pos : POSITION;
    float4 color : COLOR;
};
 
uniform float _Outline;
uniform float4 _OutlineColor;
uniform float4 _PlayerPos;
uniform float _FadeDis;
 
v2f vert(appdata v) {
    // just make a copy of incoming vertex data but scaled according to normal direction
    v2f o;
    o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
 
    float3 norm   = mul ((float3x3)UNITY_MATRIX_IT_MV, v.normal);
    float2 offset = TransformViewToProjection(norm.xy);
 
    o.pos.xy += offset * o.pos.z * _Outline;
    
    // We customize this shader to make it only outline when close to the player
    float alpha = 0;
    float4 objectOrigin = mul(_Object2World, float4(0.0,0.0,0.0,1.0) );
    float4 worldPos = mul(_Object2World, v.vertex);
    if( (objectOrigin.z >= _PlayerPos.z && worldPos.z <= _PlayerPos.z) 
    	|| (objectOrigin.z <= _PlayerPos.z && worldPos.z >= _PlayerPos.z) ) {
	   	float dist = distance(worldPos.xy, _PlayerPos.xy);
	    alpha = 1.0 - (dist / _FadeDis);
	    if (alpha < 0)
    		alpha = 0;
    }
    _OutlineColor.a = alpha;
    o.color = _OutlineColor;
    return o;
}
ENDCG
 
    SubShader {
        Tags { "Queue" = "Transparent" }
 
        // note that a vertex shader is specified here but its using the one above
        Pass {
            Name "OUTLINE"
            Tags { "LightMode" = "Always" }
            Cull Off
            ZWrite Off
            ZTest Always
            ColorMask RGB // alpha not used
 
            // you can choose what kind of blending mode you want for the outline
            Blend SrcAlpha OneMinusSrcAlpha // Normal
            //Blend One One // Additive
            //Blend One OneMinusDstColor // Soft Additive
            //Blend DstColor Zero // Multiplicative
            //Blend DstColor SrcColor // 2x Multiplicative
 
CGPROGRAM
#pragma vertex vert
#pragma fragment frag
 
half4 frag(v2f i) :COLOR {
    return i.color;
}
ENDCG
        }
 
        Pass {
            Name "BASE"
            ZWrite On
            ZTest LEqual
            Blend SrcAlpha OneMinusSrcAlpha
            Material {
                Diffuse [_Color]
                Ambient [_Color]
            }
            Lighting On
            SetTexture [_MainTex] {
                ConstantColor [_Color]
                Combine texture * constant
            }
            SetTexture [_MainTex] {
                Combine previous * primary DOUBLE
            }
        }
    }
 
    SubShader {
        Tags { "Queue" = "Transparent" }
 
        Pass {
            Name "OUTLINE"
            Tags { "LightMode" = "Always" }
            Cull Front
            ZWrite Off
            ZTest Always
            ColorMask RGB
 
            // you can choose what kind of blending mode you want for the outline
            Blend SrcAlpha OneMinusSrcAlpha // Normal
            //Blend One One // Additive
            //Blend One OneMinusDstColor // Soft Additive
            //Blend DstColor Zero // Multiplicative
            //Blend DstColor SrcColor // 2x Multiplicative
 
            CGPROGRAM
            #pragma vertex vert
            #pragma exclude_renderers gles xbox360 ps3
            ENDCG
            SetTexture [_MainTex] { combine primary }
        }
 
        Pass {
            Name "BASE"
            ZWrite On
            ZTest LEqual
            Blend SrcAlpha OneMinusSrcAlpha
            Material {
                Diffuse [_Color]
                Ambient [_Color]
            }
            Lighting On
            SetTexture [_MainTex] {
                ConstantColor [_Color]
                Combine texture * constant
            }
            SetTexture [_MainTex] {
                Combine previous * primary DOUBLE
            }
        }
    }
 
    Fallback "Diffuse"
}