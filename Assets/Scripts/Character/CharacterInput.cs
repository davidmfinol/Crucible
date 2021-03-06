﻿using UnityEngine;
using System.Collections;

/// <summary>
/// Character input stores the input for a character, while providing helper properties for accessing the input.
/// Used by CharacterAnimator.cs
/// </summary>
[AddComponentMenu("Character/Character Input")]
public sealed class CharacterInput : MonoBehaviour
{
    // We need a way to set a method that will update the input for the character
    public delegate void UpdateInput (float elapsedTime);
    private UpdateInput _updateInputMethod;

    // Keep track of what the character has input into the game
    private float _horizontal = 0;
    private float _vertical = 0;
    private bool _interaction = false;
    private Vector2 _jump = Vector2.zero;
    private float _attack = 0;
    private bool _pickup = false;
    private bool _any = false;

    // These variables are used to keep track of XPressed and XReleased properties
    private bool _fixedUpdateHappened = false;
    private bool _leftLast = false;
    private bool _rightLast = false;
    private bool _upLast = false;
    private bool _downLast = false;
    private bool _interactionLast = false;
    private bool _jumpLast = false;
    private bool _jumpLeftLast = false;
    private bool _jumpRightLast = false;
    private bool _attackLast = false;
    private bool _attackLeftLast = false;
    private bool _attackRightLast = false;
    private bool _pickupLast = false;
    private bool _anyLast = false;

    void Update ()
    {
        // Only update the _Xlast variables once we're certain that they've been recognized
        if (_fixedUpdateHappened) {
            _leftLast = Left;
            _rightLast = Right;
            _upLast = Up;
            _downLast = Down;
            _interactionLast = Interaction;
            _jumpLast = JumpActive;
            _jumpLeftLast = JumpLeft;
            _jumpRightLast = JumpRight;
            _attackLast = AttackActive;
            _attackLeftLast = AttackLeft;
            _attackRightLast = AttackRight;
            _pickupLast = Pickup;
            _anyLast = Any;
            _any = false;
            _fixedUpdateHappened = false;
        }

        // The defined delegate is responsible for actually updating the variables in this class
        if (_updateInputMethod != null)
            _updateInputMethod (Time.deltaTime);

    }

    // Because our movement happens in FixedUpdate(), we need to make sure our input is not missed by waiting until it happens
    void FixedUpdate()
    {
        _fixedUpdateHappened = true;

    }


    // Preoperty for the method that is used to update input
    public UpdateInput UpdateInputMethod {
        get { return _updateInputMethod;  }
        set {
            _horizontal = 0;
            _vertical = 0;
            _interaction = false;
            _jump = Vector2.zero;
            _attack = 0;
            _pickup = false;
            _any = false;
            _updateInputMethod = value;
        }
    }

    // Basic input values
    public float Horizontal {
        get { return _horizontal; } 
        set { _horizontal = Mathf.Min (Mathf.Max (-1, value), 1); }
    }

    public float Vertical {
        get { return _vertical; }
        set { _vertical = Mathf.Min (Mathf.Max (-1, value), 1); }
    }

    public bool Interaction {
        get { return _interaction; }
        set { _interaction = value; }
    }

    public Vector2 Jump {
        get { return _jump; }
        set { _jump = value; }
    }

    public float Attack {
        get { return _attack; }
        set { _attack = Mathf.Min (Mathf.Max (-1, value), 1); }
    }

    public bool Pickup {
        get { return _pickup; }
        set { _pickup = value; }
    }

    public bool Any {
        get { return _any; }
        set { if( value) _any = true; }
    }
    
    // Helper Input Properties
    public bool Left {
        get { return Horizontal <= -0.1f; }
    }

    public bool LeftPressed {
        get { return !_leftLast && Left; }
    }

    public bool LeftReleased {
        get { return _leftLast && !Left; }
    }

    public bool Right {
        get { return Horizontal >= 0.1f; }
    }

    public bool RightPressed {
        get { return !_rightLast && Right; }
    }

    public bool RightReleased {
        get { return _rightLast && !Right; }
    }

    public bool Up {
        get { return Vertical >= 0.1f; }
    }

    public bool UpPressed {
        get { return !_upLast && Up; }
    }

    public bool UpReleased {
        get { return _upLast && !Up; }
    }

    public bool Down {
        get { return Vertical <= -0.1f; }
    }

    public bool DownPressed {
        get { return !_downLast && Down; }
    }

    public bool DownReleased {
        get { return _downLast && !Down; }
    }

    public bool InteractionPressed {
        get { return !_interactionLast && Interaction; }
    }

    public bool InteractionReleased {
        get { return _interactionLast && !Interaction; }
    }

    public bool JumpActive {
		get { return Jump.y >= 0.1f; }
    }

    public bool JumpPressed {
		get { return !_jumpLast && JumpActive; }
    }

    public bool JumpReleased {
        get { return _jumpLast && JumpActive; }
    }

    public bool JumpUp {
        get { return Mathf.Abs(Jump.x) <= 0.1f; }
    }

    public bool JumpLeft {
        get { return Jump.x <= -0.1f; }
    }

    public bool JumpLeftPressed {
        get { return !_jumpLeftLast && JumpLeft; }
    }

    public bool JumpLeftReleased {
        get { return _jumpLeftLast && !JumpLeft; }
    }

    public bool JumpRight {
        get { return Jump.x >= 0.1f; }
    }

    public bool JumpRightPressed {
        get { return !_jumpRightLast && JumpRight; }
    }

    public bool JumpRightReleased {
        get { return _jumpRightLast && !JumpRight; }
    }

    public bool AttackActive {
        get { return AttackLeft || AttackRight; }
    }

    public bool AttackPressed {
        get { return !_attackLast && AttackActive; }
    }

    public bool AttackReleased {
        get { return _attackLast && !AttackActive; }
    }

    public bool AttackLeft {
        get { return Attack <= -0.1f; }
    }

    public bool AttackLeftPressed {
        get { return !_attackLeftLast && AttackLeft; }
    }

    public bool AttackJumpLeftReleased {
        get { return _attackLeftLast && !AttackLeft; }
    }

    public bool AttackRight {
        get { return Attack >= 0.1f; }
    }

    public bool AttackRightPressed {
        get { return !_attackRightLast && AttackRight; }
    }

    public bool AttackRightReleased {
        get { return _attackRightLast && !AttackRight; }
    }

    public bool PickupPressed {
        get { return !_pickupLast && Pickup; }
    }

    public bool PickupReleased {
        get { return _pickupLast && !Pickup; }
    }

    public bool AnyPressed {
        get { return !_anyLast && Any; }
    }

    public bool AnyReleased {
        get { return _anyLast && !Any; }
    }

}
