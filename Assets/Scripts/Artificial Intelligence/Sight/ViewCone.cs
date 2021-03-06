﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// View Cone is a visual representation of an area where an NPC can see.
/// It can be used by the Vision class to determine whether the NPC is seeing the player.
/// </summary>
[RequireComponent(typeof(MeshCollider))]
[RequireComponent(typeof(Rigidbody))]
[AddComponentMenu("Artificial Intelligence/Sight/ViewCone")]
public class ViewCone : MonoBehaviour
{
    // We need to be able to orient the viewcone correctly
    public Transform RootRotation;
    // HACK: CAMERA VIEW CONE DOESN'T HAVE MESH FORWARD SET CORRECTLY
    public bool IsCamera = false;

    // Objects obstructing our vision
    private Dictionary<Collider, GameObject> _barriers;
    private int _groundLayer;
    private Shader _shaderMask;

    // The characters we've seen
    private List<HeartBox> _charactersSeen;

	void Awake()
	{
        _barriers = new Dictionary<Collider, GameObject>();
        _groundLayer = LayerMask.NameToLayer("Ground");
        _shaderMask = Shader.Find("ViewMask");
        _charactersSeen = new List<HeartBox>();

	}

	void OnTriggerEnter(Collider other)
    {
        // Manage the list of all the objects that block our vision
        if(other.gameObject.layer == _groundLayer && !_barriers.ContainsKey(other)) {
            _barriers.Add(other, CreateMask(other, null));
        }

        // Then manage the list of characters that we see
		HeartBox heart = other.GetComponent<HeartBox>();
		if(heart != null)
			_charactersSeen.Add(heart);

	}

	void OnTriggerExit(Collider other)
    {
        // Manage the list of all the objects that block our vision
        if(_barriers.ContainsKey(other)) {
            GameObject mask;
            _barriers.TryGetValue(other, out mask);
            Destroy(mask);
            _barriers.Remove(other);
        }

        // Then manage the list of characters that we see
		HeartBox heart = other.GetComponent<HeartBox>();
		if(heart != null && _charactersSeen.Contains(heart))
			_charactersSeen.Remove(heart);

	}

    // After all movement, we need to make sure we visually occlude the barriers in our way
    void LateUpdate()
    {
        foreach(KeyValuePair<Collider, GameObject> entry in _barriers)
            CreateMask(entry.Key, entry.Value);

    }

    private GameObject CreateMask(Collider other, GameObject prevMask)
    {
        // Need to make sure the object we're masking still exists
        if (other == null) {
            Destroy(prevMask);
            return null;
        }

        // Create the mask for the first time if it doesn't exist
        MeshFilter meshFilter = null;
        Mesh mesh = null;
        if(prevMask == null) {
            prevMask = new GameObject(other.name + " mask");

            // Give it a default cubish mesh with the appropriate mask shader
            meshFilter = prevMask.AddComponent<MeshFilter>();
            MeshRenderer render = prevMask.AddComponent<MeshRenderer>();
            render.material.shader = _shaderMask;
            float s = 0.5f;
            mesh = meshFilter.mesh;
            mesh.vertices = new Vector3 [] {
                new Vector3(-s, -s, -s),
                new Vector3(-s, s, -s),
                new Vector3(s, s, -s),
                new Vector3(s, -s, -s),
                new Vector3(-s, -s, s),
                new Vector3(-s, s, s),
                new Vector3(s, s, s),
                new Vector3(s, -s, s)
            };
            mesh.triangles = new int [] {
                0, 1, 2,
                0, 2, 3, 
                4, 5, 1, 
                4, 1, 0, 
                5, 6, 2, 
                5, 2, 1, 
                3, 2, 7, 
                7, 2, 6, 
                0, 3, 7, 
                0, 7, 4
            };
            mesh.uv = new Vector2[] {
                new Vector2(0, 0),
                new Vector2(0, 1),
                new Vector2(1, 1),
                new Vector2(1, 0),
                new Vector2(0, 0),
                new Vector2(0, 1),
                new Vector2(1, 1),
                new Vector2(1, 0)
            };
            mesh.normals = new Vector3[] {
                Vector3.up,
                Vector3.up,
                Vector3.up,
                Vector3.up,
                Vector3.up,
                Vector3.up,
                Vector3.up,
                Vector3.up
            };
            mesh.RecalculateNormals();
        }

        // Define the shadow volume
        if(meshFilter == null)
            meshFilter = prevMask.GetComponent<MeshFilter>();
        if(mesh == null)
            mesh = meshFilter.mesh;

        // We simply need to find the silhoutte edges
        Bounds bounds = other.bounds;
        Vector3 center = bounds.center;
        Vector3 bottomLeft = new Vector3(-bounds.extents.x, -bounds.extents.y, bounds.center.z);
        Vector3 topLeft = new Vector3(-bounds.extents.x, bounds.extents.y, bounds.center.z);
        Vector3 topRight = new Vector3(bounds.extents.x, bounds.extents.y, bounds.center.z);
        Vector3 bottomRight = new Vector3(bounds.extents.x, -bounds.extents.y, bounds.center.z);
        Vector3 forward = transform.forward;
        Quaternion rotation = Quaternion.identity;
        // HACK: CAMERA VIEW CONE DOESN'T HAVE MESH FORWARD SET CORRECTLY
        if(IsCamera)
            rotation = Quaternion.Euler(90, 0, 0);
        else if (RootRotation != null)
            rotation = Quaternion.Euler(0, 0, -RootRotation.rotation.eulerAngles.y);
        forward = rotation * forward;
        
        // Project onto horizontal axis
        float diff = 0;
        bool isObjectToLeft = bottomLeft.x + center.x < GetComponent<Collider>().bounds.max.x;
        bool isObjectToRight = bottomRight.x + center.x > GetComponent<Collider>().bounds.min.x;
        bool isFacingLeft = forward.x < -0.1f;
        bool isFacingRight = forward.x > 0.1f;
        if(isFacingLeft && (isObjectToLeft || isObjectToRight)) { // Project left
            diff = GetComponent<Collider>().bounds.min.x - 10 - (bounds.center.x + Mathf.Min(bottomLeft.x, topLeft.x));
            bottomLeft.x += diff;
            topLeft.x += diff;
        }
        else if(isFacingRight && (isObjectToLeft || isObjectToRight)) { // Project right
            diff = GetComponent<Collider>().bounds.max.x + 10 - (bounds.center.x + Mathf.Max(bottomRight.x, topRight.x));
            bottomRight.x += diff;
            topRight.x += diff;
        }

        // Project onto vertical axis
        diff = 0;
        bool isObjectBelow = bottomLeft.y + center.y < GetComponent<Collider>().bounds.max.y;
        bool isObjectAbove = topLeft.y + center.y > GetComponent<Collider>().bounds.min.y;
        bool isFacingDown = forward.y < -0.1f;
        bool isFacingUp = forward.y > 0.1f;
        if(isFacingDown && (isObjectBelow || isObjectAbove)) { // Project down
            diff = GetComponent<Collider>().bounds.min.y - 10 - (bounds.center.y + Mathf.Min(bottomLeft.y, bottomRight.y));
            bottomLeft.y += diff;
            bottomRight.y += diff;
        }
        else if(isFacingUp && (isObjectBelow || isObjectAbove)) { // Project up
            diff = GetComponent<Collider>().bounds.max.y + 10 - (bounds.center.y + Mathf.Max(topLeft.y, topRight.y));
            topLeft.y += diff;
            topRight.y += diff;
        }

        // Then set it
        float minZ = bounds.min.z - GetComponent<Collider>().bounds.extents.z;
        float maxZ = bounds.max.z + GetComponent<Collider>().bounds.extents.z;
        prevMask.transform.position = center;
        Vector3[] newVertices = new Vector3 [] {
            new Vector3(bottomLeft.x, bottomLeft.y, minZ),
            new Vector3(topLeft.x, topLeft.y, minZ),
            new Vector3(topRight.x, topRight.y, minZ),
            new Vector3(bottomRight.x, bottomRight.y, minZ),
            new Vector3(bottomLeft.x, bottomLeft.y, maxZ),
            new Vector3(topLeft.x, topLeft.y, maxZ),
            new Vector3(topRight.x, topRight.y, maxZ),
            new Vector3(bottomRight.x, bottomRight.y, maxZ)
        };
        mesh.vertices = newVertices;
        mesh.RecalculateBounds();

        return prevMask;

    }

    // Makes sure we get rid of all our masks when we disappear
    void OnDisable()
    {
        foreach(KeyValuePair<Collider, GameObject> entry in _barriers)
            Destroy(entry.Value);
        _barriers.Clear();

    }

    void OnDestroy()
    {
        OnDisable();

    }

    public Dictionary<Collider, GameObject> Barriers {
        get { return _barriers; }
    }

	public List<HeartBox> CharactersSeen {
		get { return _charactersSeen; }
	}

}
