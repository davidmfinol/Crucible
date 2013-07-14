using UnityEngine;
using System.Collections;

[RequireComponent(typeof(CharacterFiniteStateMachineBase))]
public class CharacterFSMVisualDebugger : MonoBehaviour
{

    public bool Hide = true;
    public bool ShowCharacterState = true;
    public bool ShowZLevels = true;
    public bool UseTimeScaleMultiplier = false;
    public float TimeScaleMultiplier = 1.0f;
    private bool _timeScaleIsModified;
    private float _realTimeScaleMultiplier;

    void Update()
    {
        TimeScaleDebug();
    }
    void OnGUI()
    {
        if (!Hide)
        {
            if (ShowCharacterState)
            {
                GUI.Box(new Rect(10, 10, 300, 20), GetComponent<CharacterFiniteStateMachineBase>().CurrentState.ToString());
                GUI.Box(new Rect(10, 35, 300, 20), ((CharacterFiniteStateMachineState)GetComponent<CharacterFiniteStateMachineBase>().GetState()).Duration.ToString());
            }
            if (ShowZLevels)
            {
                GUI.Box(new Rect(10, 60, 300, 20), "Current Z: " + GetComponent<CharacterFiniteStateMachineBase>().ZLevel.ToString());
                GUI.Box(new Rect(10, 85, 300, 20), "Z_Down: " + GetComponent<CharacterFiniteStateMachineBase>().Z_Down.ToString());
                GUI.Box(new Rect(10, 110, 300, 20), "Z_Up: " + GetComponent<CharacterFiniteStateMachineBase>().Z_Up.ToString());
                string zones = "";
                foreach (Zone z in GetComponent<CharacterFiniteStateMachineBase>().Zones)
                    zones += z.transform.position.z.ToString() + " ";
                GUI.Box(new Rect(10, 135, 300, 20), "Zones: " + zones);
                GUI.Box(new Rect(10, 160, 300, 20), "Can Transition Z: " + GetComponent<CharacterFiniteStateMachineBase>().CanTransitionZ.ToString());
            }
        }
    }

    void TimeScaleDebug()
    {
        //Lower bound
        if (TimeScaleMultiplier <= 0.1f)
            TimeScaleMultiplier = 0.1f;

        //Checking and unchecking UseTimeScaleMultiplier
        if (UseTimeScaleMultiplier && !TimeScaleIsModified) //If box is checked and script has not acted yet
            startTimeScaleDebug();
        else if (!UseTimeScaleMultiplier && TimeScaleIsModified) //If box is unchecked and script has not acted yet
            stopTimeScaleDebug();

        //If the multiplier is changed while TimeScaleDebug is on
        if ((RealTimeScaleMultiplier != TimeScaleMultiplier) && UseTimeScaleMultiplier)
        {
            stopTimeScaleDebug();
            startTimeScaleDebug();
        }
    }
    void startTimeScaleDebug()
    {
        RealTimeScaleMultiplier = TimeScaleMultiplier;
        Time.timeScale *= RealTimeScaleMultiplier;
        TimeScaleIsModified = true;
    }
    void stopTimeScaleDebug()
    {
        Time.timeScale /= RealTimeScaleMultiplier;
        TimeScaleIsModified = false;
    }

    //Properties
    private bool TimeScaleIsModified
    {
        get { return _timeScaleIsModified; }
        set { _timeScaleIsModified = value; }
    }
    private float RealTimeScaleMultiplier
    {
        get { return _realTimeScaleMultiplier; }
        set { _realTimeScaleMultiplier = value; }
    }
}