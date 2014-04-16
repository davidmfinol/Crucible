using UnityEngine;
using System.Collections;

[AddComponentMenu("Audio/Music Player")]
public class MusicPlayer : AudioPlayer
{
	public AudioClip[] Music;
	public float PercentCompleteToNext;
	public float MaxTimeBetweenWinds;
	public float MaxPanSpread;
	private AudioSource[] _audios;
	private int _currentAudio;
	
	void Start ()
	{
		_audios = GetComponents<AudioSource> ();
		foreach (AudioSource audiosource in _audios) {
			audiosource.volume = 0.09f;
		}
		_currentAudio = 0;
		StartCoroutine (DelayedMusicPlay ());
		
	}
	
	public IEnumerator DelayedMusicPlay ()
	{
		while (true) {
			// First, decide when to play the wind
			float timeToPlay = Random.Range (0.0f, MaxTimeBetweenWinds);
			yield return new WaitForSeconds (timeToPlay);
			
			// Then play a random wind sound
			int windex = Random.Range (0, Music.Length);
			float pan = Random.Range (-MaxPanSpread, MaxPanSpread);
			_audios [_currentAudio].clip = Music [windex];
			_audios [_currentAudio].pan = pan;
			_audios [_currentAudio].Play ();
			
			// Then wait until this wind sound is nearing completion
			float normalizedTime = ((float)_audios [_currentAudio].timeSamples) / ((float)_audios [_currentAudio].clip.samples);
			while (normalizedTime < PercentCompleteToNext) {
				normalizedTime = ((float)_audios [_currentAudio].timeSamples) / ((float)_audios [_currentAudio].clip.samples);
				yield return null;
			}
			
			_currentAudio++;
			_currentAudio = _currentAudio % 2;
		}
		
	}
	
}
