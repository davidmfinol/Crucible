using UnityEngine;
using System.Collections;

/// <summary>
/// High resolution screenshots, particularly useful for getting a view of the entire world.
/// </summary>
[AddComponentMenu("Debug/Game State Debugger")]
public class HiResScreenShots : MonoBehaviour
{
    // Since the camera's aspect ratio is preserved, we just define the width of our target resolution for the screenshot
    public int ResolutionWidth = 5000;
    
    void Awake()
    {
        enabled = Debug.isDebugBuild;
        
    }

    public static string ScreenShotName(int width)
    {
        return string.Format("{0}/screenshots/screen_{1}x{2}.png", 
                             Application.persistentDataPath, 
                             width, System.DateTime.Now.ToString("yyyy-MM-dd_HH-mm-ss"));

    }

    void Update()
    {
        if (Input.GetKeyDown("j")) {
            string filename = ScreenShotName(ResolutionWidth);
            float supersize = ResolutionWidth / camera.pixelWidth;
            Application.CaptureScreenshot(filename, Mathf.CeilToInt(supersize));
            Debug.Log(string.Format("Took screenshot to: {0}", filename));
        }

    }

}