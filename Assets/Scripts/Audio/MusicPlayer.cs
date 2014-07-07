using UnityEngine;
using System.Collections;

/// <summary>
/// Music player plays a random song from a set of music in the background.
/// </summary>
[AddComponentMenu("Audio/Music Player")]
public class MusicPlayer : AudioPlayer
{
	public AudioClip[] Music;
	public float PercentCompleteToNext;
	public float MaxTimeBetweenSongs;
	
	protected override void OnStart ()
	{
        StartCoroutine (DelayedMusicPlay ());
		
	}
	
	public IEnumerator DelayedMusicPlay ()
	{
		while (true) {
			// First, decide when to play the music
			float timeToPlay = Random.Range (0.0f, MaxTimeBetweenSongs);
			yield return new WaitForSeconds (timeToPlay);
			
			// Then play a random song
            Play (Music [Random.Range (0, Music.Length)], 0.5f);
			
			// Then wait until this song is nearing completion
            float normalizedTime = ((float)Audio.timeSamples) / ((float)Audio.clip.samples);
			while (normalizedTime < PercentCompleteToNext) {
                normalizedTime = ((float)Audio.timeSamples) / ((float)Audio.clip.samples);
				yield return null;
			}

            AudioIndex = AudioIndex + 1;
		}
		
	}
	
}
