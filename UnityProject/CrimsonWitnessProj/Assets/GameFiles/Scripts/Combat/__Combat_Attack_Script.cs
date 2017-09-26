using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class __Combat_Attack_Script : MonoBehaviour {

    enum TargetType { ett_Self, ett_Enemy, ett_Party, ett_AllEnemy, ett_AllParty, ett_Everyone, ett_RandomEnemies };

    [Header("UserTarget")]
    public GameObject User;
    public List<GameObject> Targets;

    [Header("Attack Variables")]
    [SerializeField]
    private float baseDamage = 1.0f;
    [SerializeField]
    private TargetType myTargetType = TargetType.ett_Enemy;

    [Header("Timing Variables")]
    [SerializeField]
    private float totalDuration = 1.0f;
    [SerializeField]
    private float effectTime = 0.5f;

    // Current time
    private float currentTime = 0.0f;

    // Have we done this skill's effect yet?
    private bool doneEffect = false;

    // Use this for initialization
    void Start () {
        OnStart();
    }
	
	// Update is called once per frame
	void Update () {
        currentTime += Time.deltaTime;
        if (currentTime >= effectTime && !doneEffect)
        {
            doneEffect = true;
            foreach (GameObject t in Targets)
            {
                OnCauseEffect(t.GetComponent<__Combat_Actor_Script>());
            }
        }

        if (doneEffect && currentTime >= totalDuration)
        {
            Destroy(this.gameObject);
        }
        OnUpdate();
    }

    protected virtual void OnStart()
    {
        // Called once at the start.
    }

    protected virtual void OnUpdate()
    {
        // Called every frame.
    }

    protected virtual void OnCauseEffect(__Combat_Actor_Script targetactor)
    {
        // Here is where the result of the attack will go. Healing, damage, etc.
    }
}
