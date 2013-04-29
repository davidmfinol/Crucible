using UnityEngine;
using System.Collections;

public class DoomTrigger : MonoBehaviour
{
    public Transform Clock;
    public Transform Zombie;
    public Transform[] Locations;
    private AudioSource[] backgroundSongs;
    private bool done = false;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<PlayerCharacterStateMachine>() != null && !done)
        {
            done = true;
            Clock.audio.Play(600000);
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
        float v0 = backgroundSongs[0].volume; // keep the original volume
        backgroundSongs[1].Play(); // make sure a2 is playing
        float t = 0;

        while (t < 1)
        {
            t = Mathf.Clamp01(t + Time.deltaTime / 30);
            backgroundSongs[0].volume = (1 - t) * v0;
            backgroundSongs[1].volume = t * v0;
            yield return null;
        }
        StopCoroutine("ChangeMusic");
    }
}
