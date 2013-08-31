using UnityEngine;
using System.Collections;

public class DoomTrigger : MonoBehaviour
{
    public Transform Clock;
    public Transform Zombie;
    public Transform[] Locations;
	public Transform CrowSpawn;
    public MusicAudioSource Music;
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
            Music.StartCoroutine("ChangeMusic");
        }
    }
}
