using UnityEngine;
using System.Collections;

/// <summary>
/// Fades an object in and out by changing the color's alpha over time
/// In order for this to work, the shader for this object must support transparency
/// </summary>
public class Fader : MonoBehaviour
{
	/// <summary>
	/// Whether or not the object should start invisible
	/// </summary>
	public bool InvisibleAtStart = true;
	
	/// <summary>
	/// How many seconds the fading takes.
	/// </summary>
	public float FadeSeconds = 5;
	
	// We can set the ranges for the opacity
	public float MaxAlpha = 1;
	public float MinAlpha = 0;
	
	void Start ()
	{
		Color alphaed = renderer.material.color;
		if(InvisibleAtStart)
			alphaed.a = 0;
		renderer.material.color = alphaed;
		FadeOut ();
	}
	
	void FadeIn(float time = 0)
	{
		if(time > 0)
			FadeSeconds = time;
		StartCoroutine("DoFadeIn");
	}
	private IEnumerator DoFadeIn()
	{
		while (renderer.material.color.a < MaxAlpha)
		{
			yield return null;
 			Color temp = renderer.material.color;
 			temp.a += Time.deltaTime/FadeSeconds;
			temp.a = Mathf.Min (temp.a, MaxAlpha);
			renderer.material.color = temp;
		}
        StopCoroutine("DoFadeIn");
	}
	
	void FadeOut(float time = 0)
	{
		if(time > 0)
			FadeSeconds = time;
		StartCoroutine("DoFadeOut");
	}
	private IEnumerator DoFadeOut()
	{
		while (renderer.material.color.a > MinAlpha)
		{
			yield return null;
 			Color temp = renderer.material.color;
 			temp.a -= Time.deltaTime/FadeSeconds;
			temp.a = Mathf.Max (temp.a, MinAlpha);
			renderer.material.color = temp;
		}
        StopCoroutine("DoFadeOut");
	}
}
