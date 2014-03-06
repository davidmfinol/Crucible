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
		float red = Mathf.Cos(_timeElapsed) * 0.5f;
		float green = Mathf.Cos(_timeElapsed) * 0.5f;
		Color itemPickupColor = new Color( 0.5f + red, 0.5f + green, 0.5f);
	
		foreach(Material mat in PickupMaterials)
			mat.SetColor("_OutlineColor", itemPickupColor);
	}

}
