using UnityEngine;
using System.Collections;

public class DoomTrigger : MonoBehaviour
{
    public Transform Clock;
    public Transform Zombie;
    public Transform[] Locations;

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<PlayerCharacterStateMachine>() != null)
        {
            Clock.audio.Play(600000);
            AudioSource [] backgroundSong = Camera.main.GetComponents<AudioSource>();
            backgroundSong[0].Stop();
            backgroundSong[1].Play();
            Clock.animation["Take 001"].speed = Clock.animation["Take 001"].length / 175;
            Clock.animation.Play("Take 001");
            foreach (Transform location in Locations)
            {
                MonoBehaviour.Instantiate(Zombie, location.position, Quaternion.identity);
            }
            Destroy(gameObject);
        }
    }
}
