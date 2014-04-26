using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEditor;

/// <summary>
/// Combine children can be used by the MeshToGameObjectsMenu to combine all the meshes of a gameobject into 1 mesh.
/// This can greatly help performance by reducing the number of draw calls.
/// It is currently unused in favor of static batching (https://docs.unity3d.com/Documentation/Manual/DrawCallBatching.html).
/// 
/// This script is heavily based off the script found here: http://forum.unity3d.com/threads/37721-Combine-Children-Extented-(sources-to-share)
/// </summary>
public class CombineChildren
{

    public static void Combine (GameObject gameObject, string combinedMeshName)
    {
        MeshFilter[] filters = gameObject.GetComponentsInChildren<MeshFilter> ();
        Matrix4x4 myTransform = gameObject.transform.worldToLocalMatrix;
        Dictionary<Material, List<MeshCombineUtility.MeshInstance>> materialToMesh = new Dictionary<Material, List<MeshCombineUtility.MeshInstance>> ();

        foreach (MeshFilter sourceFilter in filters) {
            Renderer curRenderer = sourceFilter.renderer;
            if (curRenderer == null || !curRenderer.enabled)
                continue;

            MeshCombineUtility.MeshInstance instance = new MeshCombineUtility.MeshInstance
                               {
                                   mesh = sourceFilter.sharedMesh,
                                   transform = myTransform * sourceFilter.transform.localToWorldMatrix
                               };
            if (instance.mesh == null)
                continue;

            Material[] materials = curRenderer.sharedMaterials;
            for (int m = 0; m < materials.Length; m++) {
                instance.subMeshIndex = Math.Min (m, instance.mesh.subMeshCount - 1);

                List<MeshCombineUtility.MeshInstance> objects;
                if (!materialToMesh.TryGetValue (materials [m], out objects)) {
                    objects = new List<MeshCombineUtility.MeshInstance> ();
                    materialToMesh.Add (materials [m], objects);   
                }
                objects.Add (instance);
            }

            GameObject.DestroyImmediate (curRenderer);
        }

        int targetMeshIndex = 0;
        foreach (KeyValuePair<Material, List<MeshCombineUtility.MeshInstance>> de in materialToMesh) {
            foreach (MeshCombineUtility.MeshInstance instance in de.Value)
                instance.targetSubMeshIndex = targetMeshIndex;
            ++targetMeshIndex;
        }

        if (!gameObject.GetComponent<MeshFilter> ())
            gameObject.AddComponent<MeshFilter> ();
        MeshFilter filter = gameObject.GetComponent<MeshFilter> ();
        if (!gameObject.GetComponent<MeshRenderer> ())
            gameObject.AddComponent<MeshRenderer> ();

        Mesh mesh = MeshCombineUtility.Combine (materialToMesh.SelectMany (kvp => kvp.Value), false);
        Unwrapping.GenerateSecondaryUVSet (mesh);
        mesh.name = combinedMeshName;
        filter.sharedMesh = mesh;

        gameObject.renderer.materials = materialToMesh.Keys.ToArray ();
        gameObject.renderer.enabled = true;
        gameObject.renderer.castShadows = false;
        gameObject.renderer.receiveShadows = false;

    }

}