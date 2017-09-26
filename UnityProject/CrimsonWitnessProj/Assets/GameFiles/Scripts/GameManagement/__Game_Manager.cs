using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class __Game_Manager : MonoBehaviour
{
    public static __Game_Manager Instance;

    // Stored location of the player. Used when transitioning to a new scene.
    public Vector3 playerStoredPosition = new Vector3(0,0,0);
    public float playerStoredYaw = 0;

    // The last scene we were in. Useful for traveling back to a scene after something such as combat.
    public int lastScene = -1;

    // Awake
    void Awake()
    {
        if (Instance == null)
        {
            DontDestroyOnLoad(gameObject);
            Instance = this;
        }
        else if (Instance != this)
        {
            Destroy(gameObject);
        }
    }
}
