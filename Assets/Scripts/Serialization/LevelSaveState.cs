using UnityEngine;
using System.Collections;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

public class LevelSaveState
{
    public EnemySaveState[] EnemyStates;
    public ItemSaveState[] ItemStates;

    public LevelSaveState ()
    {
        EnemyStates = null;
        ItemStates = null;

    }

    public void Save (string path)
    {
        XmlSerializer serializer = new XmlSerializer (typeof(LevelSaveState));
        FileStream stream = new FileStream (path, FileMode.Create);
        serializer.Serialize (stream, this);
        stream.Close ();

    }

    public static LevelSaveState Load (string path)
    {
        LevelSaveState levelSave = null;
        
        XmlSerializer serializer = new XmlSerializer (typeof(LevelSaveState));
        FileStream stream = null;
        try { 
            stream = new FileStream (path, FileMode.Open);
            levelSave = serializer.Deserialize (stream) as LevelSaveState;
        } catch {
            // If we fail to load the file just return null
            levelSave = null;
        } finally {
            // Make sure we close the stream
            if (stream != null)
                stream.Close ();
        }

        return levelSave;

    }

	public static LevelSaveState LoadFromText (string text)
	{
		LevelSaveState levelSave = null;
		
		XmlSerializer serializer = new XmlSerializer (typeof(LevelSaveState));
		StringReader stream = null;
		try { 
			stream = new StringReader (text);
			levelSave = serializer.Deserialize (stream) as LevelSaveState;
		} catch {
			// If we fail to load the file just return null
			levelSave = null;
		} finally {
			// Make sure we close the stream
			if (stream != null)
				stream.Close ();
		}
		
		return levelSave;

	}

}
