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
	
	// The songs that we are going to layer
	private AudioClipGroup _zombieDangerClips;
	
	// TODO: The volume for each of the audio layers (so they fade in and out)
	//private float audio1Volume;
	//private float audio2Volume;
	//private float audio3Volume;
	
	private int _prevDangerLevel;
	
	
	void Start()
	{
		// Set up the audio
		_zombieDangerClips = GetComponent<AudioClipGroup>();
		_audio1 = (AudioSource)gameObject.AddComponent("AudioSource");
		_audio2 = (AudioSource)gameObject.AddComponent("AudioSource");
		_audio3 = (AudioSource)gameObject.AddComponent("AudioSource");
		_audio1.loop = true;
		_audio2.loop = true;
		_audio3.loop = true;
		_audio1.clip = _zombieDangerClips.Clips[0];
		_audio2.clip = _zombieDangerClips.Clips[1];
		_audio3.clip = _zombieDangerClips.Clips[2];
		_prevDangerLevel = -1;
	}
	
	void Update()
	{
		PlayDanger(DangerLevel);
	}
	
	public void PlayDanger(int dangerLevel)
    {
		// Do nothing if the danger level hasn't changed
		if(dangerLevel == _prevDangerLevel)
			return;
		
        if (dangerLevel <= 0 )
		{
			_audio1.Stop();
			_audio2.Stop();
			_audio3.Stop();
		}
		else if (dangerLevel == 1)
		{
			_audio1.Play();
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
	
	
	public int DangerLevel
	{
		get { return GameManager.AI.ZombiesAware; }
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
