using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// View Cone is a visual representation of an area where an NPC can see.
/// It can be used by the Vision class to determine whether the NPC is seeing the player.
/// </summary>
[RequireComponent(typeof(MeshCollider))]
[RequireComponent(typeof(Rigidbody))]
[AddComponentMenu("AI/Sight/ViewCone")]
public class ViewCone : MonoBehaviour
{
	private List<HeartBox> _charactersSeen;

	void Start()
	{
		_charactersSeen = new List<HeartBox>();

	}

	void OnTriggerEnter(Collider other)
	{
		HeartBox heart = other.GetComponent<HeartBox>();
		if(heart != null)
			_charactersSeen.Add(heart);

	}

	void OnTriggerExit(Collider other)
	{
		HeartBox heart = other.GetComponent<HeartBox>();
		if(heart != null && _charactersSeen.Contains(heart))
			_charactersSeen.Remove(heart);

	}

	public List<HeartBox> CharactersSeen {
		get { return _charactersSeen; }
	}

}
