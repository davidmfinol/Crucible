using UnityEngine;
using System.Collections;

public class LevelStart : MonoBehaviour
{
    public Transform Player;
    public Transform StartPoint;

    void Awake()
    {
        Transform player = (Transform)Instantiate(Player, StartPoint.position, Quaternion.identity);
        PlayerCharacterStateMachine playerController = player.GetComponent<PlayerCharacterStateMachine>();
        Transform bone = CharacterStateMachineBase.SearchHierarchyForBone(player, "hand_R");
        Transform Whip = playerController.Whip;
        Transform whip = (Transform)Instantiate(Whip, bone.position, Quaternion.identity);
        whip.parent = bone;
        whip.Rotate(new Vector3(90, 0, 90));
        whip.Translate(new Vector3(0.2f, 0.1f, 0.1f));
        playerController.Whip = whip;
        playerController.SpawnPoint = StartPoint;
        playerController.Spawn();
        Camera.main.GetComponent<CameraScrolling>().Target = player.transform;
    }
}
