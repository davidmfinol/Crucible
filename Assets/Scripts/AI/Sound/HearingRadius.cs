using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Hearing radius indicates an area in which an NPC can hear sound.
/// </summary>
[AddComponentMenu("AI/Sound/Hearing Radius")]
public class HearingRadius : MonoBehaviour
{
	private List<SoundEvent> _objectsHeard;
	private List<SoundBarrier> _soundBarriers;

	void Start()
	{
		_objectsHeard = new List<SoundEvent> ();
		_soundBarriers = new List<SoundBarrier> ();
	}
	
	void OnTriggerEnter(Collider other)
	{
		SoundEvent sound = other.GetComponent<SoundEvent> ();
		if (sound)
		{
			sound.HeardBy.Add(this);
			_objectsHeard.Add (sound);
		}

		SoundBarrier barrier = other.GetComponent<SoundBarrier> ();
		if (barrier)
		{
			barrier.HeardBy.Add(this);
			_soundBarriers.Add (barrier);
		}
	}

	void OnTriggerExit(Collider other)
	{
		SoundEvent sound = other.GetComponent<SoundEvent> ();
		if (sound)
		{
			//sound.HeardBy.Add(this);
			_objectsHeard.Remove (sound);
		}
		
		SoundBarrier barrier = other.GetComponent<SoundBarrier> ();
		if (barrier)
		{
			//barrier.HeardBy.Add(this);
			_soundBarriers.Remove (barrier);
		}
	}

	public List<SoundEvent> ObjectsHeard
	{
		get { return _objectsHeard; }
		set { _objectsHeard = value; }
	}

	public List<SoundBarrier> SoundBarriers {
		get { return _soundBarriers; }
		set { _soundBarriers = value; }
	}
}
