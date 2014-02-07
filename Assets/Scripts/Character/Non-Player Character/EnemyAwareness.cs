using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Enemy awareness updates the enemy's material so that it's color changes to reflect it's current awareness level.
/// </summary>
[AddComponentMenu("Character/Enemy/Enemy Awareness")]
public class EnemyAwareness : MonoBehaviour
{
	public Color ChasingColor = Color.red;
	public Color SearchingColor = Color.yellow;
	public Color WanderingColor = Color.white;
	
	private List<Material> _changeableMaterials;

	void Start()
	{
		_changeableMaterials = FindChangeableMaterials ();
	}

	public void ChangeAwareness(EnemyInput.AwarenessLevel awareness)
	{
		Color newColor = Color.black;
		switch(awareness)
		{
		case EnemyInput.AwarenessLevel.Unaware: newColor = WanderingColor; break;
		case EnemyInput.AwarenessLevel.Searching : newColor = SearchingColor; break;
		case EnemyInput.AwarenessLevel.Chasing : newColor = ChasingColor; break;
		}

		foreach (Material mat in _changeableMaterials)
			mat.color = newColor;
	}

	public List<Material> FindChangeableMaterials()
	{
		List<Material> changeableMaterials = new List<Material> ();
		foreach (MeshRenderer render in GetComponentsInChildren<MeshRenderer>())
			if(render.gameObject.CompareTag("Changeable Material"))
				changeableMaterials.Add(render.material);
		return changeableMaterials;
	}
}
