using UnityEngine;
using System.Collections;

public class Intro : MonoBehaviour
{
	public Transform TitlePrefab;
    public Transform Elevator;
    
	public void Start()
	{
		Transform titleAnim = (Transform) Instantiate(TitlePrefab, Camera.main.transform.position, TitlePrefab.rotation);
		titleAnim.transform.parent = Camera.main.transform;
        GameManager.Player.transform.parent = Elevator;
        Camera.main.GetComponent<CameraScrolling>().Springiness = 1000;
        StartCoroutine("EndIntro");
	}
	
    IEnumerator EndIntro()
    {
        while (GameManager.Player.transform.position.y < -1)
            yield return null;
        GameManager.Player.transform.parent = null;
        Camera.main.GetComponent<CameraScrolling>().Springiness = 4;
		Application.LoadLevelAdditive("Sewer");
        StopCoroutine("EndIntro");
    }
}
