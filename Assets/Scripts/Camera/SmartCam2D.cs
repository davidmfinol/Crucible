/*
 * Copyright (c) 2013 Akilram Krishnan

 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR
 * A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
 * CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

/* Version 0.2*/


using UnityEngine;
using System.Collections.Generic;

public class SmartCam2D : MonoBehaviour
{
    public GameObject target;

    Packet mainPipePacket = new Packet();
    FilterSet firstPass;

    //~ Exposing
    public float Cycle1Smooth = 10.0f;
    public float DistanceFromTarget = 5.0f;
    public LayerMask BoundsRayCastLayer;

    void Awake()
    {
        mainPipePacket.ThisTransform = transform;
        mainPipePacket.ThisCamera = camera;
        mainPipePacket.TargetTransform = target.transform;

        FilterSet.FilterSetSettings firstPassConfig = new FilterSet.FilterSetSettings();
        firstPassConfig.EnableFilter(typeof(BasicTargetFollow));
        firstPassConfig.EnableFilter(typeof(FactorBounds));
        firstPass = new FilterSet(mainPipePacket, firstPassConfig);

    }

    void Update()
    {
        //~ Exposed variable linking
        firstPass.Settings.DistanceFromCamera = DistanceFromTarget;
        firstPass.Settings.InterpolateSmoothing = Cycle1Smooth;
        firstPass.Settings.FactorBoundsMask = BoundsRayCastLayer;
        //~ Reflect clamped value
        DistanceFromTarget = firstPass.Settings.DistanceFromCamera;
        Cycle1Smooth = firstPass.Settings.InterpolateSmoothing;
        BoundsRayCastLayer = firstPass.Settings.FactorBoundsMask;

        firstPass.DoFilters();
    }

    class Packet
    {
        public Transform ThisTransform;
        public Camera ThisCamera;
        public Transform TargetTransform;
    }

    struct FilterSet
    {
        Packet startPacket;
        InterpolateBuffer interpolateBuffer;
        public FilterSetSettings Settings;

        //~ Filters
        BasicTargetFollow basicTarget;
        FactorBounds bounds;

        public FilterSet(Packet packet, FilterSetSettings cfg)
        {
            startPacket = packet;
            interpolateBuffer = new InterpolateBuffer();
            Settings = cfg;

            basicTarget = new BasicTargetFollow();
            bounds = new FactorBounds();
        }
        public void DoFilters()
        {
            if (Settings.IsFilterOn(typeof(BasicTargetFollow)))
                basicTarget.DoFilter(ref startPacket, ref interpolateBuffer, Settings);
            if (Settings.IsFilterOn(typeof(FactorBounds)))
                bounds.DoFilter(ref startPacket, ref interpolateBuffer, Settings);
            Interpolate();
        }
        //~ Output Interpolants
        //~ ~ (from startPacket, to finalPacketBuffer) into startPacket
        void Interpolate()
        {
            startPacket.ThisTransform.position = Vector3.Lerp(
                startPacket.ThisTransform.position,
                interpolateBuffer.Position,
                Time.deltaTime * Settings.InterpolateSmoothing
                );
        }

        public class InterpolateBuffer
        {
            public Vector3 Position;
            //public float FieldOfView;
        }
        public struct FilterSetSettings
        {
            private float _interpolateSmoothing;
            public float InterpolateSmoothing
            {
                get { return _interpolateSmoothing; }
                set
                {
                    if (value < 1) { value = 1; }
                    _interpolateSmoothing = value;
                }
            }
            private float _distanceFromCamera;
            public float DistanceFromCamera
            {
                get { return _distanceFromCamera; }
                set
                {
                    if (value < 0) { value = 0; }
                    _distanceFromCamera = value;
                }
            }
            public LayerMask FactorBoundsMask;
            Dictionary<System.Type, bool> filterStatus;

            public bool IsFilterOn(System.Type filterType)
            {
                if (filterStatus == null)
                    filterStatus = new Dictionary<System.Type, bool>();

                bool val = false;
                filterStatus.TryGetValue(filterType, out val);
                return val;
            }
            public void EnableFilter(System.Type filterType)
            {
                if (IsFilterOn(filterType))
                    return;

                if (!filterStatus.ContainsKey(filterType))
                    filterStatus.Add(filterType, true);
                else
                    filterStatus[filterType] = true;
            }
            public void DisableFilter(System.Type filterType)
            {
                if (!IsFilterOn(filterType))
                    return;

                if (!filterStatus.ContainsKey(filterType))
                    filterStatus.Add(filterType, false);
                else
                    filterStatus[filterType] = false;
            }
        }
    }

    interface IFilter { void DoFilter(ref Packet input, ref FilterSet.InterpolateBuffer output, FilterSet.FilterSetSettings settings);}
    struct BasicTargetFollow : IFilter
    {
        public void DoFilter(ref Packet input, ref FilterSet.InterpolateBuffer output, FilterSet.FilterSetSettings settings)
        {
            Vector3 targetPosition = input.TargetTransform.position;
            output.Position = new Vector3(targetPosition.x, targetPosition.y, targetPosition.z - settings.DistanceFromCamera);
        }
    }
    struct FactorBounds : IFilter
    {
        float searchDistanceX;
        public float SearchDistanceX { get { return searchDistanceX; } }
        float searchDistanceY;
        public float SearchDistanceY { get { return searchDistanceY; } }
        public void DoFilter(ref Packet input, ref FilterSet.InterpolateBuffer output, FilterSet.FilterSetSettings settings)
        {
            //~ modifies targetPosition
            Vector3 targetPosition = input.TargetTransform.position;

            CalculateDistances(settings.DistanceFromCamera, input.ThisCamera);
            //Debug.Log("(" + SearchDistanceX + ", " + SearchDistanceY + ")");
            Debug.DrawRay(targetPosition, Vector3.up * SearchDistanceY, Color.white);
            Debug.DrawRay(targetPosition, Vector3.right * SearchDistanceX, Color.red);
            Debug.DrawRay(targetPosition, Vector3.down * SearchDistanceY, Color.green);
            Debug.DrawRay(targetPosition, Vector3.left * SearchDistanceX, Color.blue);

            RaycastHit upperCollision;
            RaycastHit rightCollision;
            RaycastHit lowerCollision;
            RaycastHit leftCollision;

            bool upperBound = Physics.Raycast(targetPosition, Vector3.up, out upperCollision, SearchDistanceY, settings.FactorBoundsMask);
            bool rightBound = Physics.Raycast(targetPosition, Vector3.right, out rightCollision, SearchDistanceX, settings.FactorBoundsMask);
            bool lowerBound = Physics.Raycast(targetPosition, Vector3.down, out lowerCollision, SearchDistanceY, settings.FactorBoundsMask);
            bool leftBound = Physics.Raycast(targetPosition, Vector3.left, out leftCollision, SearchDistanceX, settings.FactorBoundsMask);

            //~ Adjust X
            float xTargetOffset = 0;
            if (leftBound && !rightBound)
            {
                float cameraEdgePosition = targetPosition.x - SearchDistanceX;
                xTargetOffset = leftCollision.point.x - cameraEdgePosition;
            }
            else if (!leftBound && rightBound)
            {
                float cameraEdgePosition = targetPosition.x + SearchDistanceX;
                xTargetOffset = rightCollision.point.x - cameraEdgePosition;
            }
            else if (leftBound && rightBound)
            {
                //~ Surrounding Bounds Case
                //~ ~ keeps camera centered on point exactly halfway in between bounds
                output.Position.x = Mathf.Lerp(leftCollision.point.x, rightCollision.point.x, 0.5f);
                goto Yblock;
            }
            output.Position.x += xTargetOffset;

            //~ Adjust Y
        Yblock:
            float yTargetOffset = 0;
            if (upperBound && !lowerBound)
            {
                float cameraEdgePosition = targetPosition.y + SearchDistanceY;
                yTargetOffset = upperCollision.point.y - cameraEdgePosition;
            }
            else if (lowerBound && !upperBound)
            {
                float cameraEdgePosition = targetPosition.y - SearchDistanceY;
                yTargetOffset = lowerCollision.point.y - cameraEdgePosition;
            }
            else if (upperBound && lowerBound)
            {
                //~ Surrounding Bounds Case
                //~ ~ keeps camera centered on point exactly halfway in between bounds
                output.Position.y = Mathf.Lerp(upperCollision.point.y, lowerCollision.point.y, 0.5f);
                return;
            }
            output.Position.y += yTargetOffset;

        }
        /// <summary>
        /// Generates values for SearchDistanceX and SearchDistanceY
        /// Needs to be run after aspect ratio or FOV is changed (other factors may exist undiscovered)
        /// </summary>
        /// <param name="distanceFromCamera"></param>
        /// <param name="cam">The camera being passed through the pipeline</param>
        public void CalculateDistances(float distanceFromCamera, Camera cam)
        {
            Ray xCalcRay = cam.ViewportPointToRay(new Vector3(0, 0.5f, 0));
            float angleX = Vector3.Angle(xCalcRay.direction, Vector3.forward) * Mathf.Deg2Rad;
            searchDistanceX = Mathf.Tan(angleX) * distanceFromCamera;

            Ray yCalcRay = cam.ViewportPointToRay(new Vector3(0.5f, 0, 0));
            float angleY = Vector3.Angle(yCalcRay.direction, Vector3.forward) * Mathf.Deg2Rad;
            searchDistanceY = Mathf.Tan(angleY) * distanceFromCamera;
        }
    }
}
//~ Pipes and Filter architecture
//~ ~ Camera -> { --[Basic Filtering ---Basic Target ---ActionFocus ---Bounds] --[Chaos Filtering] } -> Camera
/*
 *Packet -> [FilterSet                                           (Interpolate)] ->Packet
 *           |`-> InterpolateBuffer -> Filter -> InterpolateBuffer -^|
 */
/*Bounds TODO
 * bounds collision layermask
 * zoom bound
 * hybrid zoom-position bound (percent modifier)
 * Z limit
 * prefabs
*/