var TestMemoriesAnimations : AnimationClip;

	function OnTrigerEnter (player : Collider) {
	if (player.tag == "Player")
	GameObject.Find("1010101Memories").animation.Play("TestMemoriesAnimations");
	}