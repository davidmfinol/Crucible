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
        Transform bone = SearchHierarchyForBone(player, "hand_R");
        Transform Whip = playerController.Whip;
        Transform whip = (Transform)Instantiate(Whip, bone.position, Quaternion.identity);
        whip.parent = bone;
        whip.Rotate(new Vector3(90, 0, 0));
        whip.Translate(new Vector3(0.2f, 0.1f, 0.1f));
        playerController.Whip = whip;
        playerController.SpawnPoint = StartPoint;
        playerController.Spawn();
        Camera.main.GetComponent<CameraScrolling>().Target = player.transform;
    }

    public Transform SearchHierarchyForBone(Transform current, string name)
    {
        // check if the current bone is the bone we're looking for, if so return it
        if (current.name == name)
            return current;

        // search through child bones for the bone we're looking for
        for (int i = 0; i < current.GetChildCount(); ++i)
        {
            // the recursive step; repeat the search one step deeper in the hierarchy
            Transform found = SearchHierarchyForBone(current.GetChild(i), name);

            // a transform was returned by the search above that is not null,
            // it must be the bone we're looking for
            if (found != null)
                return found;
        }

        // bone with name was not found
        return null;
    }
}
