#if UNITY_4_0 || UNITY_4_1 || UNITY_4_2 || UNITY_4_3 || UNITY_4_4 || UNITY_4_5 || UNITY_4_6 || UNITY_4_7 || UNITY_4_8 || UNITY_4_9
#define UNITY_4
#endif
using UnityEngine;
using UnityEditor;
using System.Collections;
using Pathfinding;

/// <summary>
/// Unity Editor for a ZoneGraph.
/// </summary>
[CustomGraphEditor (typeof(ZoneGraph), "Zone Graph")]
public class ZoneGraphEditor : GraphEditor
{
    /// <summary>
    /// Draws the zone graph data in the inspector
    /// </summary>
    /// <param name="target">The ZoneGraph.</param>
    public override void OnInspectorGUI (NavGraph target)
    {
        ZoneGraph graph = target as ZoneGraph;
        
        graph.WaypointTag = EditorGUILayout.TagField ("Waypoint Tag", graph.WaypointTag);
        graph.ZonesTag = EditorGUILayout.TagField ("Zones Tag", graph.ZonesTag);
        graph.TransitionZonesTag = EditorGUILayout.TagField ("Transition Zones Tag", graph.TransitionZonesTag);
        graph.CollisionMask = EditorGUILayoutx.LayerMaskField ("Collision Mask", graph.CollisionMask);
        graph.WaypointSubdivisionSize = EditorGUILayout.FloatField ("Waypoint Subdivison", graph.WaypointSubdivisionSize);
    }

    ///// <summary>
    ///// Draws the nodes of the zone graph as the appropriate color.
    ///// </summary>
    //public override void OnDrawGizmos ()
    //{
    //    ZoneGraph graph = target as ZoneGraph;

    //    if (graph == null)
    //        return;

    //    if (graph.Nodes != null) {
    //        foreach (ZoneNode node in graph.Nodes) {
    //            Gizmos.color = AstarColor.NodeConnection;
    //            if ((node.Tag & (1 << 0)) != 0)
    //                Gizmos.color = AstarColor.ConnectionLowLerp;
    //            if (((node.Tag & (1 << 1)) != 0) || ((node.Tag & (1 << 2)) != 0))
    //                Gizmos.color = AstarColor.ConnectionHighLerp;
    //            if ((node.Tag & (1 << 3)) != 0)
    //                Gizmos.color = AstarColor.MeshEdgeColor;
    //            if ((node.Tag & (1 << 4)) != 0)
    //                Gizmos.color = AstarColor.BoundsHandles;
    //            if (!node.Walkable)
    //                Gizmos.color = AstarColor.UnwalkableNode;
    //            Gizmos.DrawCube ((Vector3)node.position, Vector3.one * HandleUtility.GetHandleSize ((Vector3)node.position) * 0.1F);
    //        }
    //    }
    //}
}
