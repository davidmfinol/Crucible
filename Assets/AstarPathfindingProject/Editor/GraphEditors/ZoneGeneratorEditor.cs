#if UNITY_4_0 || UNITY_4_1 || UNITY_4_2 || UNITY_4_3 || UNITY_4_4 || UNITY_4_5 || UNITY_4_6 || UNITY_4_7 || UNITY_4_8 || UNITY_4_9
#define UNITY_4
#endif

using UnityEngine;
using UnityEditor;
using System.Collections;
using Pathfinding;

/// <summary>
/// Unity Editor for a ZoneGraph
/// </summary>
[CustomGraphEditor (typeof(ZoneGraph), "Zone Graph")]
public class ZoneGraphEditor : GraphEditor
{
    public override void OnInspectorGUI(NavGraph target)
    {
        ZoneGraph graph = target as ZoneGraph;
		
        graph.WaypointTag = EditorGUILayout.TagField("Waypoint Tag", graph.WaypointTag);
        graph.ZonesTag = EditorGUILayout.TagField("Zones Tag", graph.ZonesTag);
        graph.TransitionZonesTag = EditorGUILayout.TagField("Transition Zones Tag", graph.TransitionZonesTag);
        graph.CollisionMask = EditorGUILayoutx.LayerMaskField("Collision Mask", graph.CollisionMask);
		graph.MaxJump = EditorGUILayout.FloatField("Max Jump", graph.MaxJump);
		graph.WaypointSubdivisionSize = EditorGUILayout.FloatField("Waypoint Subdivison", graph.WaypointSubdivisionSize);
    }

    public override void OnDrawGizmos()
    {
        ZoneGraph graph = target as ZoneGraph;

        if (graph == null)
            return;

        Gizmos.color = new Color(0.161F, 0.341F, 1F, 0.5F);

        if (graph.nodes != null)
            foreach(Node node in graph.nodes)
                Gizmos.DrawCube((Vector3)node.position, Vector3.one * HandleUtility.GetHandleSize((Vector3)node.position) * 0.1F);
    }
}
