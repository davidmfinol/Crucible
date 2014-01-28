using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Subtitles manager is responsible for keeping track of and displaying subtitles on the screen.
/// </summary>
[AddComponentMenu("Audio/Subtitles Manager")]
public class SubtitlesManager : MonoBehaviour
{
	public Queue<Subtitle> subtitleQueue;

	void Awake()
	{
		subtitleQueue = new Queue<Subtitle>();
	}

	void Update()
	{
		// Display subtitles in queue
	}

	public void QueueSubtitle(Subtitle subtitle)
	{
		subtitleQueue.Enqueue(subtitle);
	}
}
