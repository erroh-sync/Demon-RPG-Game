using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class __Overworld_Follow_Cam : MonoBehaviour {

    [Header("MovementSettings")]

    [SerializeField]
    [Tooltip("Vector offset from the player's root to follow.")]
    private Vector3 followOffset = new Vector3(0.0f, 0.0f, 0.0f);

    // Reference to the Player.
    private GameObject Player;

    // Use this for initialization
    void Start () {
        Player = findPlayer();
    }
	
	// Update is called once per frame
	void Update () {
        if (!Player)
            Player = findPlayer();
        else
        {
            updatePosition();
            updateRotation();
        }
    }

    // Returns a reference to the active Player.
    private GameObject findPlayer()
    {
        return GameObject.FindGameObjectWithTag("Player");
    }

    // Called from Update to move us closer to the player.
    private void updatePosition()
    {
        this.transform.position = Player.transform.position + followOffset;
    }
     
    //Called from Update to rotate us.
    private void updateRotation()
    {
        __Overworld_Player_Control ctrl = Player.GetComponent<__Overworld_Player_Control>();
        if (ctrl)
            this.transform.rotation = Quaternion.Euler(ctrl.getCameraRotation());
    }
}
