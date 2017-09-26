using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class __Encounter_Volume : __Trigger_Volume {

    [SerializeField]
    [Tooltip("Vector offset from the player's root to follow.")]
    private int combatSceneIndex = -1;

    int timer = 200;

    private void Update()
    {
        timer--;
    }

    // TODO: Should increment an encounter value. For now just auto scene transition.]
    protected override void OnTriggered()
    {
        if (timer < 0)
        {
            GameObject p = GameObject.FindGameObjectWithTag("Player");
            if (p)
            {
                __Game_Manager.Instance.playerStoredPosition = p.transform.position;
                __Game_Manager.Instance.playerStoredYaw = p.transform.eulerAngles.y;
            }
            __Game_Manager.Instance.lastScene = SceneManager.GetActiveScene().buildIndex;
            SceneManager.LoadScene(combatSceneIndex);
        }
    }
}
