using UnityEngine;
using System.Collections;

/// <summary>
/// Audio player is this game's wrapper class for AudioSource.
/// It works with our system to set up a uniform audio control scheme.
/// See the AudioManager Class.
/// </summary>
[RequireComponent(typeof(AudioSource))]
[AddComponentMenu("Audio/Audio Player")]
public class AudioPlayer : MonoBehaviour
{
	private AudioClipGroup _audioClipGroup;
    public AudioManager.AudioTypes type;
    // TODO: MAKE SETTINGS OF AUDIOSOURCE MATCH TYPE IN AudioManager.AudioTypes type
	void Start()
	{
		_audioClipGroup = GetComponent <AudioClipGroup>();
	}

    public virtual void Play(int number = -1)
    {
		if (number >= 0 && number < _audioClipGroup.Clips.Length)
			audio.clip = _audioClipGroup.Clips[number];
		audio.Play();
    }
	void OnTriggerEnter()
	{
		audio.Play();
	}
	void OnCollisionEnter(Collision collision)
	{
		audio.Play();
	}
}
