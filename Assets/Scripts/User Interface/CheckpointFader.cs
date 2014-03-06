﻿using UnityEngine;
using System.Collections;

[AddComponentMenu("User Interface/Checkpoint Fader")]
public class CheckpointFader : MonoBehaviour {
	private const float _fadeDuration = 3.0f;
	private const float _halfFade = _fadeDuration / 2.0f;

	private float _fadeRemaining = 0.0f;
	private string _fadeMessage = "";
	private Color _fadeColor;
	private float _alpha = 0.0f;
	
	void Start() {
		_fadeMessage = "";
		_fadeColor = new Color (1.0f, 1.0f, 1.0f, 1.0f);
		_fadeRemaining = 0.0f;
		_alpha = 0.0f;

	}

	// Use this for initialization
	public void StartFading(string s, Color c) {
		_fadeMessage = s;
		_fadeColor = c;
		_fadeRemaining = _fadeDuration;

	}

	void OnGUI() {
		GUI.skin.textArea.normal.background = null;
		GUI.skin.textArea.active.background = null;

		GUI.Label (new Rect (10, Screen.height - _alpha * 25, 300, 25), _fadeMessage);
		
	}

	// Update is called once per frame
	void Update () {
		_fadeRemaining -= Time.deltaTime;
	
		if (_fadeRemaining == 0.0f)
			return;

		if( _fadeRemaining >= _halfFade) {
			_alpha = (_fadeDuration - _fadeRemaining) / _halfFade; 

		} else if(_fadeRemaining >= 0.0f) {
			_alpha = _fadeRemaining / _halfFade; 

		} else {
			_alpha = 0.0f;
		}

	}
}