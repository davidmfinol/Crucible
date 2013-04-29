using UnityEngine;
using System.Collections;

public class Exit : MonoBehaviour
{
    void OnTriggerEnter(Collider other)
    {
        PlayerCharacterStateMachine player = other.GetComponent<PlayerCharacterStateMachine>();
        if (player != null && player.HasPackage)
            Application.LoadLevel("DemoEnd");
    }
}
