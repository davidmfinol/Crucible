using UnityEngine;
using System.Collections;

/// <summary>
/// Fades an object in and out by changing the color's alpha over time.
/// In order for this to work, the shader for this object must support transparency.
/// </summary>
[AddComponentMenu("Special Effects/Fader")]
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

    // Keep track of current state to let other classes know
    private bool _isFadingIn = false;
    private bool _isStaying = false;
    private bool _isFadingOut = false;
    
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
        _isFadingIn = false;
        _isStaying = false;
        _isFadingOut = false;
        StopAllCoroutines ();

        if (time > 0)
            FadeInSeconds = time;
        StartCoroutine (DoFadeIn ());

    }

    public IEnumerator DoFadeIn ()
    {
        _isFadingIn = true;
        while (renderer.material.color.a < MaxAlpha) {
            yield return null;
            Color temp = renderer.material.color;
            temp.a += Time.deltaTime / FadeInSeconds;
            temp.a = Mathf.Min (temp.a, MaxAlpha);
            renderer.material.color = temp;
        }

        _isFadingIn = false;
        if (StaySeconds >= 0)
            StartCoroutine (Stay ());

    }

    public IEnumerator Stay ()
    {
        _isStaying = true;
        yield return new WaitForSeconds (StaySeconds);
        _isStaying = false;
        if (FadeOutSeconds >= 0) 
            StartCoroutine (DoFadeOut ());

    }

    public void FadeOut (float time = 0)
    {
        _isFadingIn = false;
        _isStaying = false;
        _isFadingOut = false;
        StopAllCoroutines ();

        if (time > 0)
            FadeOutSeconds = time;
        StartCoroutine (DoFadeOut ());

    }

    public IEnumerator DoFadeOut ()
    {
        _isFadingOut = true;
        while (renderer.material.color.a > MinAlpha) {
            yield return null;
            Color temp = renderer.material.color;
            temp.a -= Time.deltaTime / FadeOutSeconds;
            temp.a = Mathf.Max (temp.a, MinAlpha);
            renderer.material.color = temp;
        }
        _isFadingOut = false;

    }

    public bool IsFadingIn {
        get { return _isFadingIn; }
    }

    public bool IsStaying {
        get { return _isStaying; }
    }

    public bool IsFadingOut {
        get { return _isFadingOut; }
    }

}
