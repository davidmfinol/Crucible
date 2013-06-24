using UnityEngine;
using System.Collections;

public class MusicAudioSource : AudioPlayer
{
    public AudioSource[] backgroundSongs;

    private IEnumerator ChangeMusic()
    {
        float v0 = backgroundSongs[0].volume;
        float t = 0;

        while (t < 1)
        {
            t = Mathf.Clamp01(t + Time.deltaTime / 2);
            backgroundSongs[0].volume = (1 - t) * v0;
            yield return null;
        }
        t = 0;
        while (t < 1)
        {
            t = Mathf.Clamp01(t + Time.deltaTime / 9);
            yield return null;
        }
		//CrowSpawn.GetComponent<BirdGenerator>().StartCoroutine("GenerateBirds");
        t = 0;
        backgroundSongs[1].Play();
        while (t < 1)
        {
            t = Mathf.Clamp01(t + Time.deltaTime);
            backgroundSongs[1].volume = t * v0;
            yield return null;
        }
        StopCoroutine("ChangeMusic");
    }
}
