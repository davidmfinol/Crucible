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

        XmlSerializer serializer = new XmlSerializer(typeof(GameSaveState));
        FileStream stream = null;
        try
        { 
            stream = new FileStream(path, FileMode.Open);
            gameSave = serializer.Deserialize(stream) as GameSaveState;
        }
        catch (System.SystemException err)
        {
            // If we fail to load the file, log it and return null
            Debug.Log(err);
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