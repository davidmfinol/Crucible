﻿using UnityEngine;
using System.Collections;

/// <summary>
/// Checkpoint fader makes the player aware of the current checkpoint location by fading in and out a message in the bottom-left.
/// </summary>
[AddComponentMenu("Special Effects/Checkpoint Fader")]
public class CheckpointFader : MonoBehaviour
{
    private const float _fadeDuration = 3.0f;
    private const float _halfFade = _fadeDuration * 0.5f;
    private float _fadeRemaining = 0.0f;
    private string _fadeMessage = "";
    private float _alpha = 0.0f;
    
    void Start ()
    {
        _fadeMessage = "";
        _fadeRemaining = 0.0f;
        _alpha = 0.0f;

    }

    public void StartFading (string s, Color c)
    {
        //_fadeMessage = s;
        _fadeMessage = "Checkpoint Reached.";
        _fadeRemaining = _fadeDuration;

    }

    // FIXME: SLOW
    void OnGUI ()
    {
        GUI.skin.textArea.normal.background = null;
        GUI.skin.textArea.active.background = null;

        GUI.Label (new Rect (10, Screen.height - _alpha * 25, 300, 25), _fadeMessage);
        
    }

    void Update ()
    {
        _fadeRemaining -= Time.deltaTime;
    
        if (_fadeRemaining == 0.0f)
            return;

        if (_fadeRemaining >= _halfFade) {
            _alpha = (_fadeDuration - _fadeRemaining) / _halfFade; 

        } else if (_fadeRemaining >= 0.0f) {
            _alpha = _fadeRemaining / _halfFade; 

        } else {
            _alpha = 0.0f;
        }

    }
}