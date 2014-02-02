using UnityEngine;
using System.Collections;

/// <summary>
/// Player character stealth is responsible for managing all VISUAL aspects of stealth.
/// </summary>
[AddComponentMenu("Character/Player Character/Player Character Stealth")]
public class PlayerCharacterStealth : MonoBehaviour
{
	public Shader OutlineShader;

	private Shader _defaultShader;
	private Material _childMaterial;
	private bool _currentlyHidden = false;

	void Start()
	{
		_childMaterial = FindCharacterMaterial();
		_defaultShader = _childMaterial.shader;
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

	public Material FindCharacterMaterial()
	{
		foreach (SkinnedMeshRenderer render in GetComponentsInChildren<SkinnedMeshRenderer>())
		{
			if(render.gameObject.CompareTag("Shadow"))
				return render.material;
		}
		return null;
	}

	public bool CurrentlyHidden
	{
		get { return _currentlyHidden; }
		set
		{
			_currentlyHidden = value;
			if(_currentlyHidden)
			{
				_childMaterial.shader = OutlineShader;
			}
			else
			{
				_childMaterial.shader = _defaultShader;
			}
		}
	}
}
