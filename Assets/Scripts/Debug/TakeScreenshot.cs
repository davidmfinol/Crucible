using UnityEngine;

/// <summary>
/// Takes a screenshot when you press F9. Used to keep track of debugging.
/// </summary>
[AddComponentMenu("Debug/Take Screenshot")]
public class TakeScreenshot : MonoBehaviour
{
	// The folder we place all screenshots inside.
	public string Folder = "Screenshots";
	
    private int screenshotCount = 0;
	
	void Awake()
	{
		enabled = Debug.isDebugBuild;
	}

    // Check for screenshot key each frame
    void Update()
    {
        // take screenshot on up->down transition of F9 key
        if (Input.GetKeyDown("f9"))
        {
            string screenshotFilename;
            do
            {
                screenshotCount++;
                screenshotFilename = Folder + "/" + "screenshot" + screenshotCount + ".png";

            } while (System.IO.File.Exists(screenshotFilename));

            Application.CaptureScreenshot(screenshotFilename, 2);
        }
    }
}