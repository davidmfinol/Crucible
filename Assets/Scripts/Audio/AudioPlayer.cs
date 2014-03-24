using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Audio player is this game's wrapper class for AudioSource.
/// It works with our system to set up a uniform audio control scheme.
/// See the AudioManager Class.
/// </summary>
[RequireComponent(typeof(AudioSource))]
[AddComponentMenu("Audio/Audio Player")]
public class AudioPlayer : MonoBehaviour
{
	// TODO: public AudioManager.AudioTypes Type;
	//TODO: add subtitle requirement for each sound public Subtitle[] AssociatedSubtitles;

	public virtual void Play(AudioClip clip, float volume)
	{
		audio.clip = clip;
		audio.volume = volume;
		audio.loop = false;
		audio.Play();

	}

	public void PlayLoop(AudioClip clip, float volume)
	{
		audio.clip = clip;
		audio.volume = volume;
		audio.loop = true;
		audio.Play();

	}

	public void DelayedStop()
	{
		audio.loop = false;

	}

	public void Stop()
	{
		audio.Stop();

	}
}
