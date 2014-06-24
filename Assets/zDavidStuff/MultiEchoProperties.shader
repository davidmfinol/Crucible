Shader "Custom/Echo/MultipleUsingProperty" {
Properties {
	_Color ("Main Color",Color) = (1.0,1.0,1.0,1.0)
	_MainTex ("Base (RGB)", 2D) = "white" {}
 
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
	Tags { "RenderType"="Opaque" }
	LOD 200

	CGPROGRAM
	#pragma target 3.0
	#pragma surface surf Lambert
	#pragma debug
	#include "UnityCG.cginc"

	struct Input {
		float2 uv_MainTex;
		float3 worldPos;    
	};

	float4 _Color;
	sampler2D _MainTex;

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
		//float c1 = 0;

		//c1 += ApplyFade(IN,_EchoPosition0,_EchoRadius0,_EchoFade0);
		//c1 += ApplyFade(IN,_EchoPosition1,_EchoRadius1,_EchoFade1);
		//c1 += ApplyFade(IN,_EchoPosition2,_EchoRadius2,_EchoFade2);
		//c1 /= 3.0;

		float c2 = 1.0 - c1;
		 o.Albedo = _Color.rgb * c2 + tex2D (_MainTex, IN.uv_MainTex).rgb * c1 ;   
		//o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb * _Color.rgb;
	}
	ENDCG

}

FallBack "Diffuse"
}