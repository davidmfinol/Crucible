Shader "Outlined/Interactive" {
Properties {
	_Color ("Main Color", Color) = (1,1,1,1)
	_MainTex ("Base (RGB)", 2D) = "white" {}
	
	_OutlineColor ("Outline Color", Color) = (1,1,1,1)
	_OutlineWidth ("Outline Width", Range (0.0, 0.03)) = 0.005
	_OutlineFadeDis ("Outline Fade Distance", Float) = 15
	_PlayerPos ("Player Position", Vector) = (0,0,0,0)
	
	_EchoColor ("Echo Color", Color) = (1,1,1,1)
	_EchoMaxRadius("Echo Max Radius",float) = 1.0
	_EchoMaxFade("Echo Max Fade",float) = 1.0
	
	_EchoPosition0("Echo Position0",Vector) = (0.0,0.0,0.0)
	_EchoPosition1("Echo Position1",Vector) = (0.0,0.0,0.0)
	_EchoPosition2("Echo Position2",Vector) = (0.0,0.0,0.0)
	
	_EchoRadius0("Echo Radius0",float) = 0.0
	_EchoRadius1("Echo Radius1",float) = 0.0
	_EchoRadius2("Echo Radius2",float) = 0.0
	
	_EchoFade0("Echo Fade0",float) = 0.0
	_EchoFade1("Echo Fade1",float) = 0.0
	_EchoFade2("Echo Fade2",float) = 0.0
}
SubShader {
	Tags { "Queue" = "Transparent" }

// This custom pass is what creates the outline effect
	Pass {
	    Name "OUTLINE"
	    Tags { "LightMode" = "Always" }
	    Cull Off
	    ZWrite Off
	    ColorMask RGB // alpha not used
	    Blend SrcAlpha OneMinusSrcAlpha // Normal Blending mode

		CGPROGRAM
		#include "UnityCG.cginc"
		#pragma vertex vert
		#pragma fragment frag
		
		uniform float _OutlineWidth;
		uniform float4 _OutlineColor;
		uniform float _OutlineFadeDis;
		uniform float4 _PlayerPos;
		
		struct appdata {
		    float4 vertex : POSITION;
		    float3 normal : NORMAL;
		};
		struct v2f {
		    float4 pos : POSITION;
		    float4 color : COLOR;
		};
		
		// The fading outline effect is done per-vertex
		v2f vert(appdata v) {
		    // Make a copy of incoming vertex data but scaled according to normal direction (make the outline)
		    v2f o;
		    o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
		    float3 norm   = mul ((float3x3)UNITY_MATRIX_IT_MV, v.normal);
		    float2 offset = TransformViewToProjection(norm.xy);
		    o.pos.xy += offset * o.pos.z * _OutlineWidth;
		    
		    // Set the alpha of the color so that it fades based on distance to the player
		    float alpha = 0;
		    float4 worldPos = mul(_Object2World, v.vertex);
		   	float dist = distance(worldPos.xy, _PlayerPos.xy);
		    alpha = _PlayerPos.w * (1.0 - (dist / _OutlineFadeDis));
		    alpha = max(0.0, alpha);
		    _OutlineColor.a = alpha;
		    o.color = _OutlineColor;
		    return o;
		}
		
		// No need to do anything per-fragment
		half4 frag(v2f i) : COLOR {
			return i.color;
		}
		
		ENDCG
	}

// The NPC's echolocation effect is handled here
	CGPROGRAM
	#pragma target 3.0
	#pragma surface surf Lambert
	#include "UnityCG.cginc"

	struct Input {
		float2 uv_MainTex;
		float3 worldPos;    
	};

	float4 _Color;
	sampler2D _MainTex;

	float4 _EchoColor;
	float _EchoMaxRadius;
	float _EchoMaxFade;

	float3 _EchoPosition0;
	float3 _EchoPosition1;
	float3 _EchoPosition2;

	float _EchoRadius0;
	float _EchoRadius1;
	float _EchoRadius2;

	float _EchoFade0;
	float _EchoFade1;
	float _EchoFade2;
	
	float ApplyFade(Input IN,float3 position, float radius, float infade)
	{
		// Distance from current pixel (from its world coord) to center of echo sphere
		float dist = distance(IN.worldPos, position);     

		if(radius >= 3*_EchoMaxRadius || dist >= radius)
			return 0.0;

		// Apply fading effect.
		float fadeEffect = 1.0 - (infade/_EchoMaxFade);
		fadeEffect = saturate(fadeEffect); // Keep the amount of fade between 0 and 1

		return fadeEffect;

	}
	
	// Custom surfacer that mimics an echo effect
	void surf (Input IN, inout SurfaceOutput o)
	{
		float c1 = ApplyFade(IN,_EchoPosition0,_EchoRadius0,_EchoFade0);

		c1 += ApplyFade(IN,_EchoPosition0,_EchoRadius0,_EchoFade0);
		c1 += ApplyFade(IN,_EchoPosition1,_EchoRadius1,_EchoFade1);
		c1 += ApplyFade(IN,_EchoPosition2,_EchoRadius2,_EchoFade2);
		c1 /= 3.0;
		
		fixed4 tex = tex2D(_MainTex, IN.uv_MainTex);
		fixed4 baseCol = tex * _Color;
		fixed4 echoCol = tex * _EchoColor;
		o.Albedo = baseCol.rgb + echoCol.rgb * c1;
		o.Alpha = baseCol.a + echoCol.a;
	}
	ENDCG

}

Fallback "Diffuse"
}