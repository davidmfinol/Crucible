using UnityEngine;
using System.Collections;

/// <summary>
/// Pickup animator makes all the items in the scene change colors over time.
/// </summary>
[AddComponentMenu("User Interface/Pickup Animator")]
public class PickupAnimator : MonoBehaviour
{
	private static float _timeElapsed = 0;
	public Material[] PickupMaterials;


	void Update()
	{
		_timeElapsed = Time.timeSinceLevelLoad;
		_timeElapsed %= 2.0f;
		_timeElapsed /= 2.0f;
		_timeElapsed *= 2 * Mathf.PI;
		float blue = Mathf.Cos(_timeElapsed);
		Color itemPickupColor = new Color( 1.0f, 1.0f, 0.5f);
	
		foreach(Material mat in PickupMaterials)
			mat.SetColor("_OutlineColor", itemPickupColor);
	}

}
