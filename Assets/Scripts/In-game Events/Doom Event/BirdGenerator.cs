using UnityEngine;
using System;
using System.Collections;

public class BirdGenerator : MonoBehaviour
{
	public Transform Bird;
	public int NumberOfBirds;

	public IEnumerator GenerateBirds()
	{
		int birdCount = 0;
		System.Random rand = new System.Random();
		while(birdCount < NumberOfBirds)
		{
			Transform bird = (Transform) Instantiate(Bird, transform.position, transform.rotation);
			float velX = (float) rand.NextDouble()-0.5f;
			float velY = (float) rand.NextDouble();
			bird.GetComponent<BirdMovement>().velocity = new Vector3(velX, velY, 0);
			birdCount++;
			yield return new WaitForSeconds(0.1f);
		}
		StopCoroutine("GenerateBirds");
	}
	
}
