using UnityEngine;
using System.Collections;

/// <summary>
/// Time scaler is used to make the keyboard 0-9 keys slow down time from 0-90%, for debugging only.
/// </summary>
[AddComponentMenu("Debug/Time Scaler")]
public class TimeScaler : MonoBehaviour
{
    public bool UseTimeScaleMultiplier = false;
    public float TimeScaleMultiplier = 1.0f;
    private bool _timeScaleIsModified;
    private float _realTimeScaleMultiplier;
    private int _originialFrameRate;

    void Awake ()
    {
        enabled = Debug.isDebugBuild;

    }
    
    void Update ()
    {
        if (Input.GetKeyDown (KeyCode.Alpha0)) {
            if (TimeScaleMultiplier == 0.0f)
                UseTimeScaleMultiplier = !UseTimeScaleMultiplier;
            else
                UseTimeScaleMultiplier = true;
            TimeScaleMultiplier = 0.0f;
        } else if (Input.GetKeyDown (KeyCode.Alpha1)) {
            if (TimeScaleMultiplier == 0.1f)
                UseTimeScaleMultiplier = !UseTimeScaleMultiplier;
            else
                UseTimeScaleMultiplier = true;
            TimeScaleMultiplier = 0.1f;
        } else if (Input.GetKeyDown (KeyCode.Alpha2)) {
            if (TimeScaleMultiplier == 0.2f)
                UseTimeScaleMultiplier = !UseTimeScaleMultiplier;
            else
                UseTimeScaleMultiplier = true;
            TimeScaleMultiplier = 0.2f;
        } else if (Input.GetKeyDown (KeyCode.Alpha3)) {
            if (TimeScaleMultiplier == 0.3f)
                UseTimeScaleMultiplier = !UseTimeScaleMultiplier;
            else
                UseTimeScaleMultiplier = true;
            TimeScaleMultiplier = 0.3f;
        } else if (Input.GetKeyDown (KeyCode.Alpha4)) {
            if (TimeScaleMultiplier == 0.0f)
                UseTimeScaleMultiplier = !UseTimeScaleMultiplier;
            else
                UseTimeScaleMultiplier = true;
            TimeScaleMultiplier = 0.4f;
        } else if (Input.GetKeyDown (KeyCode.Alpha6)) {
            if (TimeScaleMultiplier == 0.6f)
                UseTimeScaleMultiplier = !UseTimeScaleMultiplier;
            else
                UseTimeScaleMultiplier = true;
            TimeScaleMultiplier = 0.6f;
        } else if (Input.GetKeyDown (KeyCode.Alpha7)) {
            if (TimeScaleMultiplier == 0.7f)
                UseTimeScaleMultiplier = !UseTimeScaleMultiplier;
            else
                UseTimeScaleMultiplier = true;
            TimeScaleMultiplier = 0.7f;
        } else if (Input.GetKeyDown (KeyCode.Alpha8)) {
            if (TimeScaleMultiplier == 0.8f)
                UseTimeScaleMultiplier = !UseTimeScaleMultiplier;
            else
                UseTimeScaleMultiplier = true;
            TimeScaleMultiplier = 0.8f;
        } else if (Input.GetKeyDown (KeyCode.Alpha9)) {
            if (TimeScaleMultiplier == 0.9f)
                UseTimeScaleMultiplier = !UseTimeScaleMultiplier;
            else
                UseTimeScaleMultiplier = true;
            TimeScaleMultiplier = 0.9f;
        }
        
        TimeScaleDebug ();

    }

    private void TimeScaleDebug ()
    {
        //Checking and unchecking UseTimeScaleMultiplier
        if (UseTimeScaleMultiplier && !TimeScaleIsModified) //If box is checked and script has not acted yet
            startTimeScaleDebug ();
        else if (!UseTimeScaleMultiplier && TimeScaleIsModified) //If box is unchecked and script has not acted yet
            stopTimeScaleDebug ();

        //If the multiplier is changed while TimeScaleDebug is on
        if ((RealTimeScaleMultiplier != TimeScaleMultiplier) && UseTimeScaleMultiplier) {
            stopTimeScaleDebug ();
            startTimeScaleDebug ();
        }

    }

    private void startTimeScaleDebug ()
    {
        RealTimeScaleMultiplier = TimeScaleMultiplier;
        Time.timeScale *= RealTimeScaleMultiplier;
        _originialFrameRate = Application.targetFrameRate;
        Application.targetFrameRate = (int)(RealTimeScaleMultiplier * _originialFrameRate);
        TimeScaleIsModified = true;

    }

    private void stopTimeScaleDebug ()
    {
        if (RealTimeScaleMultiplier == 0f)
            Time.timeScale = 1.0f;
        else
            Time.timeScale /= RealTimeScaleMultiplier;
        Application.targetFrameRate = _originialFrameRate;
        TimeScaleIsModified = false;

    }

    private bool TimeScaleIsModified {
        get { return _timeScaleIsModified; }
        set { _timeScaleIsModified = value; }
    }

    private float RealTimeScaleMultiplier {
        get { return _realTimeScaleMultiplier; }
        set { _realTimeScaleMultiplier = value; }
    }
}
