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
		graph.WaypointSubdivisionSize = EditorGUILayout.FloatField("Waypoint Subdivison", graph.WaypointSubdivisionSize);
    }

    public override void OnDrawGizmos()
    {
        ZoneGraph graph = target as ZoneGraph;

        if (graph == null)
            return;

        if (graph.nodes != null)
		{
            foreach(ZoneNode node in graph.nodes)
			{
				Gizmos.color = AstarColor.NodeConnection;
				if(node.isTransition)
					Gizmos.color = AstarColor.BoundsHandles;
				if(node.isGround)
					Gizmos.color = AstarColor.ConnectionLowLerp;
				if(!node.Walkable)
					Gizmos.color = AstarColor.UnwalkableNode;
                Gizmos.DrawCube((Vector3)node.position, Vector3.one * HandleUtility.GetHandleSize((Vector3)node.position) * 0.1F);
			}
		}
    }
}
