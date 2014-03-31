using UnityEngine;
using System.Collections;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

public class GameSaveState
{
	public string LevelName;
	public Checkpoint.CheckpointLocation Checkpoint;
	public PlayerSaveState PlayerState;

	// *** tutorial zone ***
	public bool ShownWallJump1;
	public bool ShownWallJump2;
	public bool ShownDoorSneak;

	public bool SewerTopReached;
	public bool ShownStealthKillPrompt;

	public bool TutorialComplete;

	// Jasper tells you what to do
	public bool ShownMeetJasper;

    public void Save(string path)
    {
        XmlSerializer serializer = new XmlSerializer( typeof(GameSaveState) );
        FileStream stream = new FileStream(path, FileMode.Create);
        serializer.Serialize(stream, this);
        stream.Close();

    }
	
    public static GameSaveState Load(string path)
    {
        GameSaveState gameSave = null;

        FileStream stream = null;
        try
		{
			// Try to load the save file
			XmlSerializer serializer = new XmlSerializer(typeof(GameSaveState));
            stream = new FileStream(path, FileMode.Open);
            gameSave = serializer.Deserialize(stream) as GameSaveState;
        }
        catch
        {
            // If we fail to load the file just return null
            gameSave = null;
        }
        finally 
        {
            // Make sure we close the stream
            if(stream != null)
                stream.Close ();
        }

        return gameSave;
    }

}