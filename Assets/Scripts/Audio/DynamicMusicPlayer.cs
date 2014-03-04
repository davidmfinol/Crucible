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
	private bool _audio1FadingOut;
	private bool _audio1FadingIn;
	private bool _audio2FadingOut;
	private bool _audio2FadingIn;
	public float Fade;
	
	// The songs that we are going to layer
	private AudioClipGroup _enemyDangerClips;
	
	// TODO: The volume for each of the audio layers (so they fade in and out)
	//private float audio1Volume;
	//private float audio2Volume;
	//private float audio3Volume;
	
	private int _prevSearchingLevel;
	private int _prevChasingLevel;
	
	
	void Start()
	{
		// Set up the audio
		_enemyDangerClips = GetComponent<AudioClipGroup>();
		_audio1FadingOut = false;
		_audio1FadingIn = false;
		_audio2FadingOut = false;
		_audio2FadingIn = false;
		_audio1 = (AudioSource)gameObject.AddComponent("AudioSource");
		_audio1.dopplerLevel = 0;
		_audio1.volume = 0.1f;
		_audio1.panLevel = 0;
		_audio2 = (AudioSource)gameObject.AddComponent("AudioSource");
		_audio2.dopplerLevel = 0;
		_audio2.panLevel = 0;
		_audio2.volume = 0.1f;
		_audio3 = (AudioSource)gameObject.AddComponent("AudioSource");
		_audio3.dopplerLevel = 0;
		_audio3.panLevel = 0;
		_audio1.loop = true;
		_audio2.loop = true;
		_audio3.loop = true;
		_audio1.clip = _enemyDangerClips.Clips[0];
		_audio2.clip = _enemyDangerClips.Clips[1];
		_audio3.clip = _enemyDangerClips.Clips[2];
		_prevSearchingLevel = 0;
		_prevChasingLevel = 0;
	}
	
	void Update()
	{
		PlayDanger(SearchingLevel,ChasingLevel);
	}
	
	public void PlayDanger(int searchingLevel, int chasingLevel)
    {
		// Do nothing if the danger level hasn't changed
//		Debug.Log (dangerLevel + " " + _audioFadingIn + _audioFadingOut);
		if(searchingLevel == _prevSearchingLevel && chasingLevel == _prevChasingLevel)
		{
			if (_audio1FadingIn)
				FadeIn(_audio1);
			else if (_audio1FadingOut)
				FadeOut(_audio1);
			if (_audio2FadingIn)
				FadeIn(_audio2);
			else if (_audio2FadingOut)
				FadeOut(_audio2);
			return;
		}

        if (searchingLevel <= 0 && chasingLevel <= 0)
		{
			Debug.Log("Fading");
			_audio1FadingOut = true;
			_audio2FadingOut = true;
			_audio3.Stop();
		}
		else if (searchingLevel == 1 && chasingLevel == 0)
		{
			if(!_audio1FadingIn && !_audio1.isPlaying)
			{
				_audio1.Play();
			}
			_audio2FadingOut = true;
			_audio1FadingIn = true;
		}
		else if (searchingLevel == 0 && chasingLevel == 1)
		{
			if(!_audio2FadingIn && !_audio2.isPlaying)
				_audio2.Play();
			if(!_audio1.isPlaying)
				_audio1.Play();
			_audio2.timeSamples = _audio1.timeSamples;
		    _audio2FadingIn = true;
		}
		else if (searchingLevel == 2)
		{
			_audio2.timeSamples = _audio1.timeSamples;
			if (!_audio2.isPlaying)
				_audio2.Play();
			//			FadeAndChange(audio2.clip, 40);
			//			Debug.Log(audio2.timeSamples);
			//
		}
		else if (searchingLevel >= 3)
		{
			//FadeAndChange(audio3,
			_audio3.timeSamples = _audio1.timeSamples;
			_audio3.Play();
		}
		
		_prevSearchingLevel = searchingLevel;
		_prevChasingLevel = chasingLevel;
    }

	public void FadeOut(AudioSource audio)
	{
		_audio1FadingIn = false;
		_audio2FadingIn = false;
		if(audio.volume <= 0)
		{
			_audio1FadingOut = false;
		
			audio.Stop();
			audio.volume = 0.1f;
		}
		else
			audio.volume -= Fade*.00025f; // FIXME : MAKE THIS FRAMERATE DEPENDENT
	}
	public void FadeIn(AudioSource audio)
	{
		_audio1FadingOut = false;
		_audio2FadingOut = false;
		if(audio.volume >= 0.1f)
		{
			_audio1FadingIn = false;
			_audio2FadingIn = false;
		}
		else
			audio.volume += Fade*.01f;
	}
	

	public int SearchingLevel
	{
		get { return GameManager.AI.EnemiesSearching; }
	}

	public int ChasingLevel
	{
		get { return GameManager.AI.EnemiesChasing; }
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
