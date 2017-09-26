using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class __Trigger_Volume : MonoBehaviour {

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
            OnTriggered();
    }

    protected virtual void OnTriggered() { }
}
