using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// AI manager keeps track of all the AI components used in the game.
/// Currently, this only includes extensions to the A* Pathfinding project.
/// Plans to include rtNEAT are on the way.
/// </summary>
[AddComponentMenu("AI/AI Manager")]
public class AIManager : MonoBehaviour
{
	private List<ZombieInput> _zombies;
	
	
	void Awake()
	{
		_zombies = new List<ZombieInput>();
	}
	
	
	public List<ZombieInput> Zombies
	{
		get { return _zombies; }
	}
	
	public int ZombiesAware
	{
		get
		{
			int zombiesAware = 0;
			foreach(ZombieInput zombie in _zombies)
				if(zombie.Awareness == ZombieInput.AwarenessType.Chasing)
					zombiesAware++;
			return zombiesAware;
		}
	}
}
