using UnityEngine;
using UnityEditor;

public class GA_Postprocess : AssetPostprocessor
{
	static void OnPostprocessAllAssets ( string[] importedAssets,string[] deletedAssets,string[] movedAssets,string[] movedFromAssetPaths)
	{
		GA_Inspector.CheckForUpdates();
		
		GA_Tracking.Setup();
		
		if (GA.SettingsGA.GameKey.Length > 0 || GA.SettingsGA.SecretKey.Length > 0)
		{
			GA.SettingsGA.IntroScreen = false;
		}
		
		if (!EditorPrefs.GetBool("GA_Installed"+"-"+Application.dataPath, false))
		{
			if (!PlayerSettings.companyName.Equals("DefaultCompany"))
			{
				GA.SettingsGA.StudioName = PlayerSettings.companyName;
			}
			if (!PlayerSettings.productName.StartsWith("New Unity Project"))
			{
				GA.SettingsGA.GameName = PlayerSettings.productName;
			}
			EditorPrefs.SetBool("GA_Installed"+"-"+Application.dataPath, true);
			Selection.activeObject = GA.SettingsGA;
		}
	}
}