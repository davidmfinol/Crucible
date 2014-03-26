using UnityEngine;
using System.Collections;

/// <summary>
/// Fades an object in and out by changing the color's alpha over time.
/// In order for this to work, the shader for this object must support transparency.
/// </summary>
[AddComponentMenu("User Interface/Fader")]
public class Fader : MonoBehaviour
{
    // Whether the fade in, stay, then fadeout effect should happen immediately on start
    public bool FadeInAtStart = true;
    
    /// How many seconds the fading takes.
    public float FadeInSeconds = 5;
    public float StaySeconds = 5;
    public float FadeOutSeconds = 5;
    
    // We can set the ranges for the opacity
    public float MaxAlpha = 1;
    public float MinAlpha = 0;
    
    void Start ()
    {
        if (!FadeInAtStart)
            return;
        
        Color alphaed = renderer.material.color;
        alphaed.a = 0;
        renderer.material.color = alphaed;
        FadeIn ();

    }
    
    public void FadeIn (float time = 0)
    {
        if (time > 0)
            FadeInSeconds = time;
        StartCoroutine ("DoFadeIn");

    }

    IEnumerator DoFadeIn ()
    {
        while (renderer.material.color.a < MaxAlpha) {
            yield return null;
            Color temp = renderer.material.color;
            temp.a += Time.deltaTime / FadeInSeconds;
            temp.a = Mathf.Min (temp.a, MaxAlpha);
            renderer.material.color = temp;
        }
        if (FadeInAtStart)
            StartCoroutine ("Stay");
        StopCoroutine ("DoFadeIn");

    }

    IEnumerator Stay ()
    {
        yield return new WaitForSeconds (StaySeconds);
        if (FadeInAtStart) // && StaySeconds >= 0)
            StartCoroutine ("DoFadeOut");
        StopCoroutine ("Stay");

    }

    void FadeOut (float time = 0)
    {
        if (time > 0)
            FadeOutSeconds = time;
        StartCoroutine ("DoFadeOut");

    }

    IEnumerator DoFadeOut ()
    {
        while (renderer.material.color.a > MinAlpha) {
            yield return null;
            Color temp = renderer.material.color;
            temp.a -= Time.deltaTime / FadeOutSeconds;
            temp.a = Mathf.Max (temp.a, MinAlpha);
            renderer.material.color = temp;
        }
        StopCoroutine ("DoFadeOut");

    }
}
