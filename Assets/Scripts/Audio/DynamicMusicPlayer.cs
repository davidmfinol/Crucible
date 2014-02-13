using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Dynamic music plays the background music by layering different songs based off the environment.
/// </summary>
[RequireComponent(typeof(AudioClipGroup))]
[AddComponentMenu("Audio/Dynamic Music Player")]
public class DynamicMusicPlayer : AudioPlayer
{
	// Audio Layers
	private AudioSource _audio1;
	private AudioSource _audio2;
	private AudioSource _audio3;
	private bool _audioFadingOut;
	private bool _audioFadingIn;
	public float Fade;
	
	// The songs that we are going to layer
	private AudioClipGroup _enemyDangerClips;
	
	// TODO: The volume for each of the audio layers (so they fade in and out)
	//private float audio1Volume;
	//private float audio2Volume;
	//private float audio3Volume;
	
	private int _prevDangerLevel;
	
	
	void Start()
	{
		// Set up the audio
		_enemyDangerClips = GetComponent<AudioClipGroup>();
		_audioFadingOut = false;
		_audioFadingIn = false;
		_audio1 = (AudioSource)gameObject.AddComponent("AudioSource");
		_audio1.dopplerLevel = 0;
		_audio1.panLevel = 0;
		_audio2 = (AudioSource)gameObject.AddComponent("AudioSource");
		_audio2.dopplerLevel = 0;
		_audio2.panLevel = 0;
		_audio3 = (AudioSource)gameObject.AddComponent("AudioSource");
		_audio3.dopplerLevel = 0;
		_audio3.panLevel = 0;
		_audio1.loop = true;
		_audio2.loop = true;
		_audio3.loop = true;
		_audio1.clip = _enemyDangerClips.Clips[0];
		_audio2.clip = _enemyDangerClips.Clips[1];
		_audio3.clip = _enemyDangerClips.Clips[2];
		_prevDangerLevel = 0;
	}
	
	void Update()
	{
		PlayDanger(DangerLevel);
		if(_audioFadingOut)
			FadeOut (_audio1);
		if(_audioFadingIn)
			FadeIn (_audio1);
	}
	
	public void PlayDanger(int dangerLevel)
    {
		// Do nothing if the danger level hasn't changed
//		Debug.Log (dangerLevel + " " + _audioFadingIn + _audioFadingOut);
		if(dangerLevel == _prevDangerLevel)
			return;
		
        if (dangerLevel <= 0 )
		{
			_audioFadingOut = true;
			if(_audioFadingIn)
				_audioFadingIn = false;
			_audio2.Stop();
			_audio3.Stop();
		}
		else if (dangerLevel == 1)
		{
			if(_prevDangerLevel < 1)
				_audio1.Play();
			if(_audioFadingOut)
			{
				_audioFadingIn = true;
				_audioFadingOut = false;
			}
		}
		else if (dangerLevel == 2)
		{
			_audio2.timeSamples = _audio1.timeSamples;
			if (!_audio2.isPlaying)
				_audio2.Play();
			//			FadeAndChange(audio2.clip, 40);
			//			Debug.Log(audio2.timeSamples);
			//
		}
		else if (dangerLevel >= 3)
		{
			//FadeAndChange(audio3,
			_audio3.timeSamples = _audio1.timeSamples;
			_audio3.Play();
		}
		
		_prevDangerLevel = dangerLevel;
    }

	public void FadeOut(AudioSource audio)
	{
		if(audio.volume <= 0)
		{
			_audioFadingOut = false;
			audio.Stop();
			audio.volume = 1;
	//		Debug.Log ("Done Fading Out");
		}
		else
			audio.volume -= Fade*.0015f;
	}
	public void FadeIn(AudioSource audio)
	{
		if(audio.volume >= .7)
		{
			_audioFadingIn = false;
			audio.Stop();
			audio.volume = .7f;
	//		Debug.Log ("Done Fading In");
		}
		else
			audio.volume += Fade*.001f;
	}
	
	public int DangerLevel
	{
		get { return GameManager.AI.EnemiesAware; }
	}
	
	 /*
// sourceToPlayOnTheNextBeat.Play(offset);


audio.clip = track1;
audio.Play();
 
var audio1Volume : float = 1.0;
var audio2Volume : float = 0.0;
var track2Playing : boolean = false;
 
v Update() {
    fadeOut();
 
    if (audio1Volume <= 0.1) {
        if(track2Playing == false)
        {
          track2Playing = true;
          audio.clip = track2;
          audio.Play();
        }
 
        fadeIn();
    }
}
 
public void fadeIn(AudioClip clip, AudioClip nextClip) {
    float audioVolume = clip.volume;
	float newAudioVolume = 0;
	if (audioVolume < 1) {
        audio2Volume += 0.1 * Time.deltaTime;
        audio.volume = audio2Volume;
    }
}
 
public void fadeOut(AudioClip clip, AudioClip nextClip) {
    if(clip > 0.1)
    {
        audio1Volume -= 0.1 * Time.deltaTime;
        audio.volume = audio1Volume;
    }
}
*/	
}
