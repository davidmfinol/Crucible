#if UNITY_4_0 || UNITY_4_1 || UNITY_4_2 || UNITY_4_3 || UNITY_4_4 || UNITY_4_5 || UNITY_4_6 || UNITY_4_7 || UNITY_4_8 || UNITY_4_9
#define UNITY_4
#endif

using UnityEngine;
using UnityEditor;
using System.Collections;
using Pathfinding;

[CustomGraphEditor (typeof(ZoneGraph), "Zone Graph")]
public class ZoneGraphEditor : GraphEditor
{

    //Here goes the GUI
    public override void OnInspectorGUI(NavGraph target)
    {/*
        ZoneGraph graph = target as ZoneGraph;
		
        graph.WaypointTag = EditorGUILayout.TagField("Waypoint Tag", graph.WaypointTag);
        graph.ZonesTag = EditorGUILayout.TagField("Zones Tag", graph.ZonesTag);
        graph.TransitionZonesTag = EditorGUILayout.TagField("Zones Tag", graph.TransitionZonesTag);
        graph.CollisionMask = EditorGUILayoutx.LayerMaskField("Mask", graph.CollisionMask);
<<<<<<< HEAD
		graph.MaxJump = EditorGUILayout.FloatField("Max Jump", graph.MaxJump);
		graph.WaypointSubdivisionSize = EditorGUILayout.FloatField("Waypoint Subdivison", graph.WaypointSubdivisionSize);
=======
        */
>>>>>>> 02e4fbeb60244287643e817398524a26e8e428c6
    }
}
