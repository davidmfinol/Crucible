using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Player character stealth is responsible for managing all VISUAL aspects of stealth.
/// </summary>
[AddComponentMenu("Character/Player Character/Player Character Stealth")]
public class PlayerCharacterStealth : MonoBehaviour
{
	public Shader OutlineShader;

	private Shader _defaultShader;
	private List<Material> _changeableMaterials;
	private bool _currentlyHidden = false;

	void Start()
	{
		_changeableMaterials = FindChangeableMaterials();
		_defaultShader = _changeableMaterials[0].shader;
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag ("Shadow") )
			CurrentlyHidden = true;
	}

	void OnTriggerExit(Collider other)
	{
		if (other.CompareTag ("Shadow"))
			CurrentlyHidden = false;
	}

	public List<Material> FindChangeableMaterials()
	{
		List<Material> changeableMaterials = new List<Material> ();
		foreach (SkinnedMeshRenderer render in GetComponentsInChildren<SkinnedMeshRenderer>())
			if(render.gameObject.CompareTag("Changeable Material"))
				changeableMaterials.Add(render.material);
		return changeableMaterials;
	}

	public bool CurrentlyHidden
	{
		get { return _currentlyHidden; }
		set
		{
			_currentlyHidden = value;
			if(_currentlyHidden)
			{
				_changeableMaterials[0].shader = OutlineShader;
			}
			else
			{
				_changeableMaterials[0].shader = _defaultShader;
			}
		}
	}
}
