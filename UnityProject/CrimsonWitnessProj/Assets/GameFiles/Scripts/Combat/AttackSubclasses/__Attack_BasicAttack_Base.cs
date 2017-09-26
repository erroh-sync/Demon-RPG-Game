using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class __Attack_BasicAttack_Base : __Combat_Attack_Script
{
    [Header("Animation Properties")]
    [SerializeField]
    private float userMoveSpeed = 0.2f;
    [SerializeField]
    private float StopDistance = 1.0f;

    private Vector3 targetLocation;

    protected override void OnStart()
    {
        // Called once at the start.
        targetLocation = Targets[0].transform.position - Vector3.Normalize(Targets[0].transform.position - User.transform.position) * StopDistance;

        Camera.main.transform.position = Targets[0].transform.position + (Targets[0].transform.rotation * Targets[0].GetComponent<__Combat_Actor_Script>().getCamOffset());
        Camera.main.transform.rotation = Targets[0].transform.rotation;

        User.GetComponent<__Combat_Actor_Script>().playAnim("Attack");
    }

    protected override void OnUpdate()
    {
        // Called every frame.
        User.transform.position = Vector3.Lerp(User.transform.position, targetLocation, Time.deltaTime * userMoveSpeed);
    }

    protected override void OnCauseEffect(__Combat_Actor_Script targetactor)
    {
        // Here is where the result of the attack will go. Healing, damage, etc.
        Targets[0].GetComponent<__Combat_Actor_Script>().playAnim("Damage");
    }
}
