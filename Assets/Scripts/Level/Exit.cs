using UnityEngine;
using System.Collections;

public class Exit : MonoBehaviour
{
	public string NextLevel;
	
    void OnTriggerEnter(Collider other)
    {
        PlayerCharacterFSM player = other.GetComponent<PlayerCharacterFSM>();
        if (player != null)
            Application.LoadLevel(NextLevel);
    }
}
