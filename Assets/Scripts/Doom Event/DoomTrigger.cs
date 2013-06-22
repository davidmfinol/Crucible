using UnityEngine;
using System.Collections;

public class DoomTrigger : MonoBehaviour
{
    public Transform Clock;
    public Transform Zombie;
    public Transform[] Locations;
	public Transform CrowSpawn;
    private AudioSource[] backgroundSongs;
    private bool done = false;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<PlayerCharacterFSM>() != null && !done)
        {
            done = true;
            Clock.audio.Play(300000);
            Clock.animation["Take 001"].speed = Clock.animation["Take 001"].length / 175;
            Clock.animation.Play("Take 001");
            foreach (Transform location in Locations)
            {
                MonoBehaviour.Instantiate(Zombie, location.position, Quaternion.identity);
            }
            backgroundSongs = Camera.main.GetComponents<AudioSource>();
            StartCoroutine("ChangeMusic");
        }
    }

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
