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
    public int GroundLayer = LayerMask.NameToLayer("Ground");

    private Dictionary<Collider, GameObject> _barriers;

	private List<HeartBox> _charactersSeen;

	void Awake()
	{
		_charactersSeen = new List<HeartBox>();
        _barriers = new Dictionary<Collider, GameObject>();

	}

	void OnTriggerEnter(Collider other)
    {
        // Manage the list of all the objects that block our vision
        if(other.gameObject.layer == GroundLayer)
            _barriers.Add(other, CreateMask(other));

        // Then manage the list of characters that we see
		HeartBox heart = other.GetComponent<HeartBox>();
		if(heart != null)
			_charactersSeen.Add(heart);

	}

	void OnTriggerExit(Collider other)
    {
        // Manage the list of all the objects that block our vision
        if(_barriers.ContainsKey(other))
            _barriers.Remove(other);

        // Then manage the list of characters that we see
		HeartBox heart = other.GetComponent<HeartBox>();
		if(heart != null && _charactersSeen.Contains(heart))
			_charactersSeen.Remove(heart);

	}

    // Every frame, we need to make sure we occlude the 
    void Update()
    {

    }

    private GameObject CreateMask(Collider other)
    {
        return null;
    }

	public List<HeartBox> CharactersSeen {
		get { return _charactersSeen; }
	}

}
