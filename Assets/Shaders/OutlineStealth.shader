Shader "OutlineStealth" {
	Properties {
		_Color ("Main Color", Color) = (1,0,0,1)
		_OutlineColor ("Outline Color", Color) = (1,0,0,1)
		_Outline ("Outline width", Range (0.0, 0.03)) = .005
		_MainTex ("Base (RGB)", 2D) = "white" { }
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
 
v2f vert(appdata v) {
	// for some reason the vars at top are not used.
	float outlineWidth = 0.005;
	float4 outlineColor = (1,0,0,1);

	// just make a copy of incoming vertex data but scaled according to normal direction
	v2f o;
	o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
 
	float3 norm   = mul ((float3x3)UNITY_MATRIX_IT_MV, v.normal);
	float2 offset = TransformViewToProjection(norm.xy);
 
	o.pos.xy += offset * o.pos.z * outlineWidth;           
	                                               
//	o.color = outlineColor;
	o.color.x = 1.0;
	o.color.y = 1.0;
	o.color.z = 1.0;
//	o.color.w = 1.0;
	return o;
}
ENDCG
 
	SubShader {
		Tags { "Queue" = "Transparent" }
 
		// note that a vertex shader is specified here but its using the one above
		Pass {
//			Name "OUTLINE"
//			Tags { "LightMode" = "Always" }
			Cull Off
			ZWrite Off
			ZTest Always
			ColorMask RGB // alpha not used
// 
			// you can choose what kind of blending mode you want for the outline
			Blend SrcAlpha OneMinusSrcAlpha // Normal
			//Blend One One // Additive
			//Blend One OneMinusDstColor // Soft Additive
			//Blend DstColor Zero // Multiplicative
			//Blend DstColor SrcColor // 2x Multiplicative
 
CGPROGRAM
// Upgrade NOTE: excluded shader from OpenGL ES 2.0 because it does not contain a surface program or both vertex and fragment programs.
#pragma exclude_renderers gles
#pragma vertex vert
//#pragma fragment frag
// 
//half4 frag(v2f i) :COLOR {
//	return i.color;
//}
ENDCG
		}
 
		Pass {
			Color(0,0,0,1)
		
//			Name "BASE"
//			ZWrite On
//			ZTest LEqual
//			Blend SrcAlpha OneMinusSrcAlpha
//			Material {
//				Diffuse (1,0,0,1)
//				Ambient (1,0,0,1)
//			}
//			Lighting On                       // JUSTIN: for a solid black character, either do Lighting Off or 
//											  // set ConstantColor to (0,0,0,1) like I did.
//			SetTexture [_MainTex] {
//				ConstantColor (1,0,0,0) 
//				Combine texture * constant
//			}
//			SetTexture [_MainTex] {
//				Combine previous * primary DOUBLE
//			}
		}
	}
  
	Fallback "Diffuse"
}