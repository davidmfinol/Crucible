using UnityEngine;
using System.Collections;

public class LevelStart : MonoBehaviour
{
    public Transform Player;
    public Transform StartPoint;

    void Awake()
    {
        Transform player = (Transform) Instantiate(Player, StartPoint.position, Quaternion.identity);
        PlayerCharacterStateMachine playerController = player.GetComponent<PlayerCharacterStateMachine>();
        playerController.SpawnPoint = StartPoint;
        playerController.Spawn();
        Camera.main.GetComponent<CameraScrolling>().Target = player.transform;
    }
}
