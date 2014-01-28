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
	public AudioManager.AudioTypes Type;
	public Subtitle[] AssociatedSubtitles;
	public bool TriggersOnce = true;

	private AudioClipGroup _audioClipGroup;
	private bool _isTriggered = false;
	private bool _hasTriggered = false;

    // TODO: MAKE SETTINGS OF AUDIOSOURCE MATCH TYPE IN AudioManager.AudioTypes type
	void Start()
	{
		_audioClipGroup = GetComponent <AudioClipGroup>();
	}

    public virtual void Play(int number = -1)
    {
		if (_audioClipGroup != null && number >= 0 && number < _audioClipGroup.Clips.Length)
			audio.clip = _audioClipGroup.Clips[number];
		audio.Play();
		_isTriggered = false;
    }

	void OnTriggerEnter(Collider collider)
	{
		if((_hasTriggered && TriggersOnce) || _isTriggered || !collider.CompareTag("Player")) 
			return;

		_isTriggered = true;
		_hasTriggered = true;
		Play();
	}
	void OnCollisionEnter(Collision collision)
	{
		OnTriggerEnter(collision.collider);
	}
}
