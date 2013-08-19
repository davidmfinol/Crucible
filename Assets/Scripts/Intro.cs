using UnityEngine;
using System.Collections;

public class Intro : MonoBehaviour
{
	public Transform TitlePrefab;
    public Transform Elevator;
    

	void Start ()
	{
		Application.LoadLevelAdditive("Sewer");
		Transform titleAnim = (Transform) Instantiate(TitlePrefab, TitlePrefab.position, TitlePrefab.rotation);
		titleAnim.parent = Camera.main.transform;
		titleAnim.position = new Vector3(0f, 0f, 3.9f);
		titleAnim.GetChild(0).position = Vector3.zero;
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
