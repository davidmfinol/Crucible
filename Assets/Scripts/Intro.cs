using UnityEngine;
using System.Collections;

public class Intro : MonoBehaviour
{
    public Transform Elevator = null;

	void Start ()
	{
		Application.LoadLevelAdditive("Demo");
        GameLevel.Player.parent = Elevator;
        Camera.main.GetComponent<CameraScrolling>().Springiness = 1000;
        StartCoroutine("EndIntro");
	}
	
    IEnumerator EndIntro()
    {
        while (GameLevel.Player.position.y < -1)
            yield return null;
        GameLevel.Player.parent = null;
        Camera.main.GetComponent<CameraScrolling>().Springiness = 4;
        StopCoroutine("EndIntro");
    }
}
