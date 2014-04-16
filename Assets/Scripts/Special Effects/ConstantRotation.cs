using UnityEngine;
using System.Collections;

/// <summary>
/// Constant rotation rotates the object around the z-axis at a defined rate.
/// </summary>
[AddComponentMenu("Special Effects/Constant Rotation")]
public class ConstantRotation : MonoBehaviour
{
    public float RotationSpeed = 1.0f;
    public bool RotatesLeft = true;

    void Update()
    {
        Quaternion rot = Quaternion.Euler (Vector3.forward * RotationSpeed * Time.deltaTime);
        if (RotatesLeft)
            rot = Quaternion.Euler (Vector3.back * RotationSpeed * Time.deltaTime);
        transform.rotation = rot * transform.rotation;
    }
}
