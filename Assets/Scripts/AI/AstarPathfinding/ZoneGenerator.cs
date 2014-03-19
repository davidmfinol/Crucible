using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using Pathfinding;
using Pathfinding.Serialization.JsonFx;

/// <summary>
///  Creates a custom A* graph to be used to traverse through zones in the game.
/// </summary>
[JsonOptIn]
public class ZoneGraph : NavGraph // TODO: IUpdatableGraph
{
    [JsonMember]
    // Game Objects tagged with this tag will be considered nodes on the ZoneGraph
    public string WaypointTag = "Waypoint";

    [JsonMember]
    // Game Objects tagged with this tag will be considered areas on the ZoneGraph
    // These game objects must contain colliders with bounds indicating the area of the zone
    public string ZonesTag = "Zone";

    [JsonMember]
    // Game Objects tagged with this tag will be considered transition areas on the ZoneGraph
    // These game objects must contain colliders with bounds indicating the area of the transition zone
    public string TransitionZonesTag = "TransitionZone";

    [JsonMember]
    // Game Objects on this layer will be considered objects we can't pass through
    public LayerMask CollisionMask = 1 << 12;

    [JsonMember]
    // Waypoints with bounds will be subdivided into more points that are this distance away from each other for fidelity of traversal
    public float WaypointSubdivisionSize = 7;

    // We need to know the character animator settings of the enemies to determine the graph
    private CharacterAnimator _olympusAnimator;
    private CharacterSettings _olympusSettings;

    // All the ZoneNodes in the ZoneGraph
    private ZoneNode[] _nodes;

    // Map of all the waypoints (as nodes on the node graph) to their respective zones (areas indicated by Bounds)
    private Dictionary< Bounds, List<ZoneNode> > _zonesWithWaypoints;

    // Map of all the transition waypoints (as nodes on the node graph) to their respective transition zones (areas indicated by Bounds)
    private Dictionary< Bounds, List<ZoneNode> > _transitionZonesWithWaypoints;


    /// <summary>
    /// A required method for the A* Pathfinding Project that gets the all the nodes in the graph.
    /// Note that we don't actually use this method ourselves, as we can just use the Nodes property that we define.
    /// </summary>
    /// <param name="del">A delegate method defined by the A* Pathfinding Project to get a specific node.</param>
    public override void GetNodes (GraphNodeDelegateCancelable del)
    {
        if (_nodes == null)
            return;

        for (int i=0; i < _nodes.Length && del (_nodes[i]); i++) {
        }
    }
    
    /// <summary>
    /// Scans the scene and creates the zone graph to be used by A* for pathfinding.
    /// </summary>
    public override void ScanInternal (OnScanStatus statusCallback)
    {
        // First, get the components we need
        GameObject OlympusPrefab = (GameObject)Resources.Load ("Olympus");
        _olympusAnimator = OlympusPrefab.GetComponent<CharacterAnimator> ();
        _olympusSettings = OlympusPrefab.GetComponent<CharacterSettings> ();

        // Then, create the nodes and connect them
        GenerateNodes ();
        ConnectNodes ();
    }

    /// <summary>
    /// Finds all the waypoints in the scenes and creates nodes on the node graph for them.
    /// </summary>
    public void GenerateNodes ()
    {
        // Find all the relevant game objects in the scene
        GameObject[] waypointGOs = GameObject.FindGameObjectsWithTag (WaypointTag);
        GameObject[] zoneGOs = GameObject.FindGameObjectsWithTag (ZonesTag);
        GameObject[] transitionZoneGOs = GameObject.FindGameObjectsWithTag (TransitionZonesTag);

        // Gotta have something to work with
        if (zoneGOs == null || waypointGOs == null) {
            Debug.LogWarning ("Zones or waypoints not found. Zone graph not generated.");
            _nodes = new ZoneNode[0];
            return;
        }

        // We're going to start by keeping a list of all the nodes as we create them
        List<ZoneNode> waypointNodes = new List<ZoneNode> ();

        // Go through each object designated as a waypoint, and create nodes as appropriate for them
        foreach (GameObject waypointGO in waypointGOs) {

            // If the waypoint is on the ground, use the points above it
            if ((CollisionMask.value & 1 << waypointGO.layer) != 0) {
                List<Vector3> waypoints = GetGameObjectWaypoints (waypointGO, 2);

                for (int i = 0; i < waypoints.Count; i++) {
                    Vector3 waypoint = waypoints [i];
                    ZoneNode newNode = new ZoneNode (AstarPath.active);
                    newNode.position = (Int3)waypoint;
                    newNode.Walkable = !Physics.CheckSphere (waypoint, 0.0001f, CollisionMask.value) && CanFit (waypoint);
                    newNode.GO = waypointGO;
                    newNode.Tag = 0;
                    newNode.Tag |= (1 << 0); // Set ground

                    // Note that we track of left and right ledges by ASSUMING that GetWaypoints returns the waypoint in order from left to right
                    if (waypointGO.name.ToLower ().Contains ("ledge")) {
                        if (i == 0)
                            newNode.Tag |= (1 << 1); // Set Left Ledge
                        if (i == waypoints.Count - 1)
                            newNode.Tag |= (1 << 2); // Set Right Ledge
                    }

                    waypointNodes.Add (newNode);
                }
            }
                
            // Walls have extra waypoints to the sides
            else if (waypointGO.GetComponent<GrabbableObject> () != null) {
                List<Vector3> waypoints = GetGameObjectWaypoints (waypointGO, 1);
                waypoints.AddRange (GetGameObjectWaypoints (waypointGO, 3));
                for (int i = 0; i < waypoints.Count; i++) {
                    Vector3 waypoint = waypoints [i];
                    ZoneNode newNode = new ZoneNode (AstarPath.active);
                    newNode.position = (Int3)waypoint;
                    newNode.Walkable = !Physics.CheckSphere (waypoint, 0.0001f, CollisionMask.value) && CanFit (waypoint);
                    newNode.GO = waypointGO;
                    newNode.Tag = 0;
                    newNode.Tag |= (1 << 4); // Set Wall
                    waypointNodes.Add (newNode);
                }
            }

            // If it's a climbable object, just subdivide it and use those points 
            else if (waypointGO.GetComponent<ClimbableObject> () != null) {
                List<Vector3> waypoints = GetGameObjectWaypoints (waypointGO, 4);
                for (int i = 0; i < waypoints.Count; i++) {
                    Vector3 waypoint = waypoints [i];
                    ZoneNode newNode = new ZoneNode (AstarPath.active);
                    newNode.position = (Int3)waypoint;
                    newNode.Walkable = !Physics.CheckSphere (waypoint, 0.0001f, CollisionMask.value) && CanFit (waypoint);
                    newNode.GO = waypointGO;
                    newNode.Tag = 0;
                    newNode.Tag |= (1 << 3); // Set Climbable
                    waypointNodes.Add (newNode);
                }
            } 

            // If it's not one of our three types of game objects, then we did something wrong
            else
                Debug.Log ("Astar node generation found a gameobject that it doesn't know how to use!");
        }

        // Save all the nodes we found
        _nodes = waypointNodes.ToArray ();
        
        // Set up the mappings of nodes to zones
        _zonesWithWaypoints = new Dictionary< Bounds, List<ZoneNode> > ();
        foreach (GameObject zoneGO in zoneGOs)
            if (!_zonesWithWaypoints.ContainsKey (zoneGO.collider.bounds))
                _zonesWithWaypoints.Add (zoneGO.collider.bounds, new List<ZoneNode> ());
        
        // Set up the mappings of nodes to transition zones
        _transitionZonesWithWaypoints = new Dictionary< Bounds, List<ZoneNode> > ();
        foreach (GameObject transitionZoneGO in transitionZoneGOs)
            if (!_transitionZonesWithWaypoints.ContainsKey (transitionZoneGO.collider.bounds))
                _transitionZonesWithWaypoints.Add (transitionZoneGO.collider.bounds, new List<ZoneNode> ());

        // Organize all the nodes into their respective zones and transition zones
        foreach (ZoneNode node in _nodes) {
            Vector3 nodePos = (Vector3)node.position;
            foreach (Bounds zoneBounds in _zonesWithWaypoints.Keys) {
                if (zoneBounds.Contains (nodePos)) {
                    // TODO: ACCOUNT FOR THE CASE WHERE A NODE LIES IN MORE THAN 1 ZONE
                    nodePos.z = zoneBounds.center.z;
                    node.position = (Int3)nodePos;
                    node.Walkable = !Physics.CheckSphere (nodePos, 0.0001f, CollisionMask.value) && CanFit (nodePos);
                    _zonesWithWaypoints [zoneBounds].Add (node);
                }
            }
            foreach (Bounds transitionZoneBounds in _transitionZonesWithWaypoints.Keys)
                if (transitionZoneBounds.Contains (nodePos))
                    _transitionZonesWithWaypoints [transitionZoneBounds].Add (node);
        }

    }

    /// <summary>
    /// Creates a list of way points a long a side of the object that we define
    /// </summary>
    /// <returns>The list of waypoints.</returns>
    /// <param name="waypointGO">GameObject to get waypoints from.</param>
    /// <param name="direction">Direction: 1 = left, 2 = above, 3 = right, 4 = subdivide.</param>
    public List<Vector3> GetGameObjectWaypoints (GameObject waypointGO, int direction)
    {
        List<Vector3> waypoints = new List<Vector3> ();

        // Deal with rotation
        Quaternion storedRotation = waypointGO.transform.localRotation;
        waypointGO.transform.localRotation = Quaternion.identity;

        // Get the way point and its bounds
        Vector3 waypoint = waypointGO.transform.position;
        Bounds waypointBounds = new Bounds (waypoint, Vector3.zero);
        if (waypointGO.collider != null)
            waypointBounds = waypointGO.collider.bounds;

        // We also find a Boxcollider if we can to subtract out it's world space
        BoxCollider waypointBox = waypointGO.GetComponent<BoxCollider> ();
        Vector3 boxOffset = Vector3.zero;
        if (waypointBox != null && storedRotation != Quaternion.identity && !waypointGO.name.ToLower ().Contains ("diagonal"))
            boxOffset = waypointBox.center;

        // Find the extents of that bound
        float z = waypointBounds.center.z;
        float left = waypointBounds.center.x - waypointBounds.extents.x;
        float right = waypointBounds.center.x + waypointBounds.extents.x;
        float top = waypointBounds.center.y + waypointBounds.extents.y;
        float bottom = waypointBounds.center.y - waypointBounds.extents.y;

        // Helpers for rotation
        Vector3 rotationPoint = waypointBounds.center;
        Vector3 rotationAngle = Vector3.zero;
        if (waypointGO.transform.parent != null)
            rotationAngle = RotatePointAroundPivot (storedRotation.eulerAngles, waypointGO.transform.parent.position, waypointGO.transform.parent.rotation.eulerAngles);

        // Actually get the list of all the waypoints
        switch (direction) {

        case 1: // left

            for (float y = bottom; y < top; y += WaypointSubdivisionSize) {
                Vector3 leftPoint = new Vector3 (left, y, z);
                leftPoint = RotatePointAroundPivot (leftPoint, rotationPoint, rotationAngle);
                waypoints.Add (leftPoint + boxOffset);
            }
            Vector3 topLeft = new Vector3 (left, top, z);
            topLeft = RotatePointAroundPivot (topLeft, rotationPoint, rotationAngle);
            waypoints.Add (topLeft + boxOffset);
            break;

        case 2: // above

            for (float x = left; x < right; x += WaypointSubdivisionSize) {
                Vector3 abovePoint = new Vector3 (x, top + 1, z);
                abovePoint = RotatePointAroundPivot (abovePoint, rotationPoint, rotationAngle);
                waypoints.Add (abovePoint + boxOffset);
            }
            Vector3 topRightOff = new Vector3 (right, top + 1, z);
            topRightOff = RotatePointAroundPivot (topRightOff, rotationPoint, rotationAngle);
            waypoints.Add (topRightOff + boxOffset);
            break;

        case 3: // right

            for (float y = bottom; y < top; y += WaypointSubdivisionSize) {
                Vector3 rightPoint = new Vector3 (right, y, z);
                rightPoint = RotatePointAroundPivot (rightPoint, rotationPoint, rotationAngle);
                waypoints.Add (rightPoint + boxOffset);
            }
            Vector3 topRight = new Vector3 (right, top, z);
            topRight = RotatePointAroundPivot (topRight, rotationPoint, rotationAngle);
            waypoints.Add (topRight + boxOffset);
            break;

        case 4: // subdivide

            for (float x = left; x < right; x += WaypointSubdivisionSize) {
                for (float y = top; y > bottom; y -= WaypointSubdivisionSize)
                    waypoints.Add (RotatePointAroundPivot (new Vector3 (x, y, z), rotationPoint, rotationAngle) + boxOffset);
                waypoints.Add (RotatePointAroundPivot (new Vector3 (x, bottom, z), rotationPoint, rotationAngle) + boxOffset);
            }
            for (float y = top; y > bottom; y -= WaypointSubdivisionSize)
                waypoints.Add (RotatePointAroundPivot (new Vector3 (right, y, z), rotationPoint, rotationAngle) + boxOffset);
            waypoints.Add (RotatePointAroundPivot (new Vector3 (right, bottom, z), rotationPoint, rotationAngle) + boxOffset);
            break;

        }

        //Restore rotation
        waypointGO.transform.localRotation = storedRotation;

        // Return all the waypoints we found
        return waypoints;

    }

    /// <summary>
    /// Rotates a point around another pivot point.
    /// </summary>
    /// <returns>The rotated point.</returns>
    /// <param name="point">Point.</param>
    /// <param name="pivot">Pivot.</param>
    /// <param name="angles">Angles.</param>
    public static Vector3 RotatePointAroundPivot (Vector3 point, Vector3 pivot, Vector3 angles)
    {
        Vector3 dir = point - pivot; // get point direction relative to pivot
        dir = Quaternion.Euler (angles) * dir; // rotate it
        point = dir + pivot; // calculate rotated point
        return point; // return it

    }

    /// <summary>
    /// Connects all the nodes in the graph.
    /// </summary>
    public void ConnectNodes ()
    {
        // To avoid too many allocations, these lists are reused for each node
        List<ZoneNode> connections = new List<ZoneNode> (3);
        List<uint> costs = new List<uint> (3);

        // Build the graph based for each zone, using the transitionZoneWaypoints to link them together
        foreach (KeyValuePair< Bounds, List<ZoneNode> > zoneWaypointsPair in _zonesWithWaypoints) {

            // Each node in the zone needs to have it's connections set
            foreach (ZoneNode node in zoneWaypointsPair.Value) {
                connections.Clear ();
                costs.Clear ();
                
                // Each zone starts by only connecting the nodes in that zone together
                foreach (ZoneNode other in zoneWaypointsPair.Value) {
                    if (node == other)
                        continue;

                    float dist = 0;
                    if (IsValidConnection (node, other, out dist)) {
                        connections.Add (other);
                        costs.Add ((uint)Mathf.RoundToInt (dist * Int3.FloatPrecision));
                    }
                }

                // Stitch the zones together if there are transitionZone(s) that indicates we should do so
                foreach (KeyValuePair< Bounds, List<ZoneNode> > transitionZoneWaypointsPair in _transitionZonesWithWaypoints) {
                    if (!zoneWaypointsPair.Key.Intersects (transitionZoneWaypointsPair.Key))
                        continue;

                    foreach (ZoneNode other in transitionZoneWaypointsPair.Value) {
                        if (!zoneWaypointsPair.Key.Contains ((Vector3)other.position))
                            continue;

                        float dist = 0;
                        if (IsValidConnection (node, other, out dist)) {
                            connections.Add (other);
                            costs.Add ((uint)Mathf.RoundToInt (dist * Int3.FloatPrecision));
                        }
                    }
                }

                // Set the connections that we found for the node
                node.connections = connections.ToArray ();
                node.connectionCosts = costs.ToArray ();
            }
        }

    }
    
    /// <summary>
    /// Checks if going from Node A to Node B is a valid movement for a character.
    /// </summary>
    /// <param name="A">The first node.</param>
    /// <param name="B">The second node.</param>
    /// <param name="dist">The distance between the two nodes.</param>
    /// <returns>Whether or not the connection between the nodes is valid.</returns>
    public bool IsValidConnection (ZoneNode A, ZoneNode B, out float dist)
    {
        dist = 0;

        // First check that both nodes are walkable
        if (!A.Walkable || !B.Walkable)
            return false;

        // We'll be using these positions a lot, so cache them
        Vector3 posA = (Vector3)A.position;
        Vector3 posB = (Vector3)B.position;
        
        // Then check that the character is capable of jumping from the first node to the second
        if (!CanJump (posA, posB))
            return false;

        // Then do a basic check to see if there's any ground objects in the way
        Vector3 dir = posB - posA;
        dist = dir.magnitude;
        
        Ray ray = new Ray (posA, posB - posA);
        Ray invertRay = new Ray (posB, posA - posB);
        
        bool obstructedByGround = Physics.Raycast (ray, dist, CollisionMask) || Physics.Raycast (invertRay, dist, CollisionMask);
        if (obstructedByGround)
            return false;

        // Let's avoid ridiculous situations where we have to jump in a circle to make the jump.
        bool bIsLeftLedge = (B.Tag & (1 << 1)) != 0;
        bool bIsRightLedge = (B.Tag & (1 << 2)) != 0;
        if ((bIsLeftLedge || bIsRightLedge) && Mathf.Abs (posB.x - posA.x) < _olympusAnimator.Radius)
            return false;

        // Find out some values we'll be using
        bool canFall = CanFall (posA, posB) && FallClear (posA, posB);
        bool canJump = JumpClear (posA, posB);
        bool samePlatForm = (A.GO == B.GO) || A.GO.collider.bounds.Intersects (B.GO.collider.bounds);
        
        // If the waypoint are on two different platforms, make sure we are either capable of jumping over or falling over
        if (!samePlatForm && !canFall && !canJump)
            return false;

        /*
        // We penalize required jumps
        if(!samePlatForm && !canFall && canJump)
            dist *= 2;

        if( ((B.Tag & (1 << 4)) != 0) || ((A.Tag & (1 << 4)) != 0) )
            return false;
        */

        // If we pass all the tests, return true
        return true;

    }

    /// <summary>
    /// Checks if there is a ground object between two points.
    /// </summary>
    /// <returns><c>true</c>, if by ground was obstructed, <c>false</c> otherwise.</returns>
    /// <param name="posA">Position a.</param>
    /// <param name="posB">Position b.</param>
    public bool ObstructedByGround (Vector3 posA, Vector3 posB, out float dist)
    {
        // Get the direction and distance between a and b
        Vector3 dir = posB - posA;
        dist = dir.magnitude;

        // If a and b are equal, we can just return false
        if (dist == 0)
            return false;

        // We need to raycast from both a to b, and from b to a to account for objects on both sides
        Ray ray = new Ray (posA, dir.normalized);
        Ray invertRay = new Ray (posB, (posA - posB).normalized);
        return Physics.Raycast (ray, dist, CollisionMask) || Physics.Raycast (invertRay, dist, CollisionMask);

    }
    
    /// <summary>
    /// Determines whether an enemy character is small enough to walk at the specified point.
    /// </summary>
    /// <returns>Whether an enemy character is small enough to walk at the specified point.</returns>
    /// <param name="point">The point to examine.</param>
    public bool CanFit (Vector3 point)
    {
        float dist = 0;
        return !ObstructedByGround (point, point + Vector3.up * _olympusAnimator.Height + Vector3.down, out dist);

    }
    
    /// <summary>
    /// Determines whether the enemy character can fall (without jumping) from point a to point b.
    /// </summary>
    /// <returns>Whether the fall is possible.</returns>
    /// <param name="a">The start point.</param>
    /// <param name="b">The end point.</param>
    public bool CanFall (Vector3 a, Vector3 b)
    {
        if (b.y > a.y)
            return false;
        
        float yDist = Mathf.Abs (b.y - a.y);
        float t = Mathf.Sqrt (2.0f * yDist / _olympusSettings.Gravity);
        float xDist = Mathf.Abs (b.x - a.x);
        return xDist < _olympusSettings.MaxHorizontalSpeed * t;

    }
    
    /// <summary>
    /// Returns whether an enemy can jump from one position to another.
    /// </summary>
    /// <param name="a">The starting position of the enemy.</param>
    /// <param name="b">The ending position the enemy is considering.</param>
    /// <returns>Whether a jump is possible.</returns>
    public bool CanJump (Vector3 a, Vector3 b)
    {
        float xDist = Mathf.Abs (b.x - a.x);
        float yDist = b.y - a.y;
        float yVel = Mathf.Sqrt (2.0f * (_olympusSettings.JumpHeight) * _olympusSettings.Gravity);
        float t = yVel / _olympusSettings.Gravity;
        float yMax = _olympusSettings.JumpHeight + (_olympusAnimator.Height * 0.5f);
        if (xDist > _olympusSettings.MaxHorizontalSpeed * t) {
            t = xDist / _olympusSettings.MaxHorizontalSpeed;
            yMax = (yVel * t) + ((-_olympusSettings.Gravity * t * t) * 0.5f);
        }
        return yDist < yMax;

    }
    
    /// <summary>
    /// Returns whether the area between two points is clear of obstacles, so that the character may fall between those points.
    /// </summary>
    /// <returns>Whether the fall area is clear.</returns>
    /// <param name="start">The start point.</param>
    /// <param name="end">The end point.</param>
    public bool FallClear (Vector3 start, Vector3 end)
    {
        return CapsuleCastTest (start, end);

    }

    /// <summary>
    /// Returns whether the area between two points is clear of obstacles, so that the character may jump between those points.
    /// </summary>
    /// <returns>Whether the jump area is clear.</returns>
    /// <param name="start">The start point.</param>
    /// <param name="end">The end point.</param>
    public bool JumpClear (Vector3 start, Vector3 end)
    {
        // TODO: CAN WE MAKE THIS MORE PRECISE?
        return OverlapSphereTest (start, end);

    }

    /// <summary>
    /// Does a capsule cast from start to end to determine if there is an obstacle in the way.
    /// </summary>
    /// <returns><c>true</c>, if the area is clear, <c>false</c> otherwise.</returns>
    /// <param name="start">The start point.</param>
    /// <param name="end">The end point.</param>
    public bool CapsuleCastTest (Vector3 start, Vector3 end)
    {
        Vector3 footPos = start;
        Vector3 headPos = footPos + Vector3.up * _olympusAnimator.Height + Vector3.down; // Subtract 1 because node is 1 above ground
        float halfHeight = _olympusAnimator.Height * 0.5f;

        Vector3 dir = (end + Vector3.up * halfHeight + Vector3.down) - (headPos + Vector3.down * halfHeight);
        float dist = dir.magnitude;
        dir = dir.normalized;

        return !Physics.CapsuleCast (footPos, headPos, _olympusAnimator.Radius, dir, dist, CollisionMask);

    }

    /// <summary>
    /// Tests a hemisphere area between the two specified points to determine if they are clear of obstacles.
    /// </summary>
    /// <returns><c>true</c>, if the area is clear, <c>false</c> otherwise.</returns>
    /// <param name="start">The start point.</param>
    /// <param name="end">The end point.</param>
    public bool OverlapSphereTest (Vector3 start, Vector3 end)
    {
        Vector3 midPoint = (start + end) * 0.5f;
        float radius = Vector3.Distance (start, midPoint);
        Collider[] colliders = Physics.OverlapSphere (midPoint, radius, CollisionMask);
        
        float slope = (end.y - start.y) / (end.x - start.x);
        float b = -1.0f * slope * start.x + start.y;
        
        foreach (Collider collider in colliders) {
            Vector3 closestPoint = collider.ClosestPointOnBounds (midPoint);
            float yAtX = slope * closestPoint.x + b;
            if (closestPoint.y > yAtX)
                return false;
        }
        
        return true;

    }

    /// <summary>
    /// Gets the nearest node on this graph to specified position.
    /// </summary>
    /// <returns>The nearest node on this graph.</returns>
    /// <param name="position">The position examined.</param>
    /// <param name="constraint">Ignored.</param>
    /// <param name="hint">Ignored.</param>
    public override NNInfo GetNearest (Vector3 position, NNConstraint constraint, GraphNode hint)
    {
        // We are going to look for the nearest node by constantly looking for smaller and smaller distances
        ZoneNode nearestNode = null;
        float nearestDist = float.MaxValue;

        // We can go through each of our zones and check to see if the nearest node could be in that zone
        foreach (KeyValuePair<Bounds, List<ZoneNode> > zoneWithWaypoints in _zonesWithWaypoints) {
            if (!zoneWithWaypoints.Key.Contains (position))
                continue;

            // If we reach a zone that could contain the nearest node, look through all the nodes in that zone
            List<ZoneNode>.Enumerator nodesInZone = zoneWithWaypoints.Value.GetEnumerator ();
            while (nodesInZone.MoveNext()) {
                ZoneNode currentNode = nodesInZone.Current;
                float nodeDist = float.MaxValue;
                Vector3 nodePos = (Vector3)currentNode.position;

                // Make sure there's no object in the way, and calculate the distance
                bool isValid = !ObstructedByGround (position, nodePos, out nodeDist);

                // If the distance is 0, we know this is an absolute nearest node, and can quit early
                if (nodeDist == 0)
                    return new NNInfo (currentNode);

                // If the distance is the smallest found so far, set it as the current nearest node
                if (isValid && nodeDist < nearestDist) {
                    nearestDist = nodeDist;
                    nearestNode = currentNode;
                }
            }
        }

        // Return an NNInfo for the Nearest Node that we found
        return nearestNode != null ? new NNInfo (nearestNode) : new NNInfo ();

    }

    /// <summary>
    /// Used to draw the graph connections for debugging purposes.
    /// </summary>
    public override void OnDrawGizmos (bool drawNodes)
    {
        if (AstarPath.active.debugMode != GraphDebugMode.Areas && AstarPath.active.debugMode != GraphDebugMode.Connections) {
            base.OnDrawGizmos (drawNodes);
            return;
        }
        
        if (!drawNodes || _nodes == null)
            return;
        
        for (int i=0; i<_nodes.Length; i++) {
            ZoneNode node = (ZoneNode)_nodes [i];
            if (node.connections != null) {
                for (int q=0; q<node.connections.Length; q++) {
                    bool doublyLinked = node.connections [q].ContainsConnection (node);
                    if (AstarPath.active.debugMode == GraphDebugMode.Areas || doublyLinked) {
                        Gizmos.color = doublyLinked ? AstarColor.MeshColor : AstarColor.MeshEdgeColor;
                        Gizmos.DrawLine ((Vector3)node.position, (Vector3)node.connections [q].position);
                    }
                }
            }
            
        }
        
    }


    /// <summary>
    /// Gets all the nodes in the ZoneGraph.
    /// </summary>
    /// <value>The nodes in the ZoneGraph.</value>
    public ZoneNode[] Nodes {
        get { return _nodes; }
    }
}
