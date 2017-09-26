using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class __Combat_Actor_Script : MonoBehaviour {

    [Header ("DeterministicStats")]
    [SerializeField]
    private float baseAgi = 10.0f;

    [Header("DisplayInfo")]
    [SerializeField]
    private Vector3 cameraOffset = new Vector3(0,0,0);

    [Header("External References")]
    [SerializeField]
    private Animation anim;

    // Buff/Debuffs
    private float AgiBuff = 0.0f;

    // Misc
    public int teamIndex = 0; // 0 = Player, 1 = Enemy
    private Vector3 Home;

    private void Start()
    {
        Home = this.transform.position;
        setPosToHome();
    }

    public float getAgi()
    {
        return baseAgi * AgiBuff;
    }

    // Gets the cam offset
    public Vector3 getCamOffset()
    {
        return cameraOffset;
    }

    // Plays an animation at a set index
    public void playAnim(string name)
    {
        anim.Play(name);
    }

    // Moves the character back to their home.
    public void setPosToHome()
    {
        this.transform.position = Home;
        anim.Play("Idle");
    }
}
