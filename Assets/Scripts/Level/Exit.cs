using UnityEngine;
using System.Collections;

public class Exit : MonoBehaviour
{
    void OnTriggerEnter(Collider other)
    {
        PlayerCharacterFSM player = other.GetComponent<PlayerCharacterFSM>();
        if (player != null && player.HasPackage)
            Application.LoadLevel("DemoEnd");
    }
}
