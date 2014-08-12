using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Dynamic music plays background music by layering different songs based off the state of the game.
/// </summary>
[AddComponentMenu("Audio/Music/Dynamic Music Player")]
public class DynamicMusicPlayer : AudioPlayer
{
    // The songs that we are going to layer
    public AudioClip[] EnemyDangerClips;

    // The rate at which songs fade in and out
    public float Fade;

    // The state of the song layers
    private bool _song1FadingIn;
    private bool _song1FadingOut;
    private bool _song2FadingIn;
    private bool _song2FadingOut;

    // To keep track of transitions
    private int _prevSearchingLevel;
    private int _prevChasingLevel;

    protected override void OnStart()
    {
        // Set up the song layers
        _song1FadingOut = false;
        _song1FadingIn = false;
        _song2FadingIn = false;
        _song2FadingOut = false;
        
        // Set up the audiosource components
        for (int i = 0; i < Audios.Length; i++) {
            AudioSource audioSource = Audios [i];
            audioSource.dopplerLevel = 0;
            audioSource.volume = 0.1f;
            audioSource.panLevel = 0;
            audioSource.loop = true;
            audioSource.clip = EnemyDangerClips [i];
        }

        // Start at basic sound for transitions
        _prevSearchingLevel = 0;
        _prevChasingLevel = 0;

    }
    
    void Update()
    {
        PlayDanger(SearchingLevel, ChasingLevel);

    }
    
    public void PlayDanger(int searchingLevel, int chasingLevel)
    {
        // Do nothing if the danger level hasn't changed
        if (searchingLevel == _prevSearchingLevel && chasingLevel == _prevChasingLevel) {
            if (_song1FadingIn) {
                FadeIn(Song1);
            } else if (_song1FadingOut) {
                FadeOut(Song1);
            }
            if (_song2FadingIn) {
                FadeIn(Song2);
            } else if (_song2FadingOut) {
                FadeOut(Song2);
            }
            return;
        }

        // TODO: THE CASES COVERED HERE AREN'T ALL THE POSSIBLE CASES?

        // NO DANGER
        if (searchingLevel <= 0 && chasingLevel <= 0) {
            _song1FadingOut = true;
            _song2FadingOut = true;
            Song2.Stop();

            // ONE ENEMY STARTED SEARCHING
        } else if (searchingLevel == 1 && chasingLevel == 0) {
            if (!_song1FadingIn && !Song1.isPlaying) {
                Song1.Play();
            }
            _song2FadingOut = true;
            _song1FadingIn = true;

            // ONE ENEMY STARTED CHASING
        } else if (searchingLevel == 0 && chasingLevel == 1) {
            if (!_song2FadingIn && !Song2.isPlaying) {
                Song2.Play();
            }
            if (!Song1.isPlaying) {
                Song1.Play();
            }
            Song2.timeSamples = Song1.timeSamples;
            _song2FadingIn = true;
            
            // TWO ENEMIES STARTED SEARCHING
        } else if (searchingLevel == 2) {
            Song2.timeSamples = Song1.timeSamples;
            if (!Song2.isPlaying) {
                Song2.Play();
            }

            // THREE ENEMIES STARTED SEARCHING
        } else if (searchingLevel >= 3) {
            Song3.timeSamples = Song1.timeSamples;
            Song3.Play();
        }

        // Keep track of transitions
        _prevSearchingLevel = searchingLevel;
        _prevChasingLevel = chasingLevel;

    }

    // This method is called on frames where an audioSource needs to fade in over time
    public void FadeIn(AudioSource audioSource)
    {
        _song1FadingOut = false;
        _song2FadingOut = false;
        if (audioSource.volume >= 0.1f) {
            _song1FadingIn = false;
            _song2FadingIn = false;
        } else {
            audioSource.volume += Fade * Time.deltaTime;
        }
        
    }
    
    // This method is called on frames where an audioSource needs to fade out over time
    public void FadeOut(AudioSource audioSource)
    {
        _song1FadingIn = false;
        _song2FadingIn = false;
        if (audioSource.volume <= 0) {
            _song1FadingOut = false;
            audioSource.volume = 0.1f;
            audioSource.Stop();
        } else {
            audioSource.volume -= Fade * Time.deltaTime * .025f;
        }

    }

    public int SearchingLevel {
        get { return GameManager.AI.EnemiesSearching; }
    }

    public int ChasingLevel {
        get { return GameManager.AI.EnemiesChasing; }
    }

    public AudioSource Song1 {
        get { return Audios [0]; }
    }
    
    public AudioSource Song2 {
        get { return Audios [1]; }
    }
    
    public AudioSource Song3 {
        get { return Audios [2]; }
    }

}
