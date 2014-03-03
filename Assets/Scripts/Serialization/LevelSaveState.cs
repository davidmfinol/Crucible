﻿using UnityEngine;
using System.Collections;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

public class LevelSaveState
{
	public EnemySaveState[] enemyStates;

	public LevelSaveState()
	{
        enemyStates = null;
	}
    
    
    public void Save(string path)
    {
        XmlSerializer serializer = new XmlSerializer( typeof(LevelSaveState) );
        FileStream stream = new FileStream(path, FileMode.Create);
        serializer.Serialize(stream, this);
        stream.Close();
    }

    public static LevelSaveState Load(string path)
    {
        LevelSaveState levelSave = null;
        
        XmlSerializer serializer = new XmlSerializer(typeof(LevelSaveState));
        FileStream stream = null;
        try
        { 
            stream = new FileStream(path, FileMode.Open);
            levelSave = serializer.Deserialize(stream) as LevelSaveState;
        }
        catch (System.SystemException err)
        {
            // If we fail to load the file, log it and return null
            Debug.Log(err);
            levelSave = null;
        }
        finally
        {
            // Make sure we close the stream
            if(stream != null)
                stream.Close ();
        }

        return levelSave;
    }


}