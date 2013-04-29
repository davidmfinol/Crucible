using UnityEngine;
using System.Collections;

public class DoomTrigger : MonoBehaviour
{
    public Transform Clock;
    public Transform Zombie;
    public Transform[] Locations;

    void OnTriggerEnter(Collider other)
    {
        audio.Play(15);
        Clock.animation["Take 001"].speed = animation["Take 001"].length / 15;
        Clock.animation.Play("Take 001");
    }
}
