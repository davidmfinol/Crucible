using UnityEngine;

/// <summary>
/// Takes a movie when you press F10. Used to keep track of debugging.
/// </summary>
[AddComponentMenu("Debug/Take Movie")]
public class TakeMovie : MonoBehaviour
{
	// The folder we place all screenshots inside.
	// If the folder exists we will append numbers to create an empty folder.
	public string Folder = "Screenshots/Movie";
	public int FrameRate = 25;
	
	private string _realFolder = "";
	private bool _capturing = false;
	
	void Awake()
	{
		enabled = Debug.isDebugBuild;
	}
	
	void Update()
	{
		// F10 toggles the capture mode
		if(Input.GetKeyDown("f10"))
		{
			_capturing = !_capturing;
			if(_capturing)
				StartCapturing();
			else
				Time.captureFramerate = 0;
		}
		
		// Do nothing if we're not capturing
		if(!_capturing)
			return;
		
		// Name is "realFolder/0005 shot.png"
		string name = string.Format("{0}/{1:D04} shot.png", _realFolder, Time.frameCount);
 
		// Capture the screenshot
		Application.CaptureScreenshot(name);
	}
	
	private void StartCapturing()
	{
		// Set the playback framerate!
		// (real time doesn't influence time anymore)
		Time.captureFramerate = FrameRate;
 
		// Find a folder that doesn't exist yet by appending numbers!
		_realFolder = Folder;
		int count = 1;
		while (System.IO.Directory.Exists(_realFolder))
		{
			_realFolder = Folder + count;
			count++;
		}
		// Create the folder
		System.IO.Directory.CreateDirectory(_realFolder);
	}
}