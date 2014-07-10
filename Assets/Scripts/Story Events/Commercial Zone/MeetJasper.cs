using UnityEngine;
using System.Collections;

/// <summary>
/// Meet jasper for the first time at the beginning of the commercial zone.
/// </summary>
[AddComponentMenu("Story Events/Commercial Zone/Meet Jasper")]
public class MeetJasper : MonoBehaviour
{
    public Transform TVScreen1;
    public Transform TVScreen2;
    public Transform TVScreen3;

    void OnTriggerEnter (Collider other)
    {
        if (!GameManager.SaveData.ShownMeetJasper) {
            GameManager.SaveData.ShownMeetJasper = true;

            NewmanAnimator anim = other.gameObject.GetComponent<NewmanAnimator> ();

            if (anim != null) {
            //    StartCoroutine (DoDialogue());
                
            }

        }

    }

}
