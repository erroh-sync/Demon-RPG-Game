using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class __Combat_Manager : MonoBehaviour {

    public enum CombatState { ecs_Init, ecs_Intro, ecs_Dialogue, ecs_Decision, ecs_Action, ecs_Resolution, ecs_Victory, ecs_PlayerDeath };

    // The current position in the combat we are at.
    private CombatState currentState = CombatState.ecs_Init;

    public static __Combat_Manager Instance;

    [Header("Data Storage")]

    // Array of Combat Actor Prefabs in Indexed Order
    [SerializeField]
    private GameObject[] combatActorLookup = new GameObject[0];

    // Array of Skill Prefabs in Indexed Order
    [SerializeField]
    private GameObject[] skillLookup = new GameObject[0];

    [Header("Camera Animation")]

    // The curve that the camera will follow when combat is entered.
    [SerializeField]
    private AnimationCurve IntroCamAnim;
    // The start point during the intro animation 
    [SerializeField]
    private Vector3 IntroCamPosStart;
    [SerializeField]
    private Vector3 IntroCamRotStart;
    // The end point during the intro animation 
    [SerializeField]
    private Vector3 IntroCamPosEnd;
    [SerializeField]
    private Vector3 IntroCamRotEnd;
    [SerializeField]
    private float IntroSpeed = 0.6f;

    [Header("Test Data")]
    public int PlayerID = 0;
    public int DanteID = 1;
    public int turnFrames = 20;

    // Stores the spawned objects making up the player's party.
    private List<GameObject> playerParty = new List<GameObject>();

    // Stores the spawned objects making up the enemy's party.
    private List<GameObject> enemyParty = new List<GameObject>();

    // List used for turn order.
    private List<GameObject> allChars = new List<GameObject>();

    // Denotes who's turn it is
    private int turnIndex = 0;

    // The current position along an animation curve we are at. 
    private float introCameraAnimationPosition = 0.0f;

    // Awake
    void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else if (Instance != this)
        {
            Destroy(gameObject);
        }
    }

    // Called on Start
    private void Start()
    {
        initCombat();
    }

    // Called once per Frame
    private void Update()
    {
        stepCombatState();
    }

    // Initializes the combat
    private void initCombat()
    {
        // Player Party
        // TODO: Actually spawn the player's party out. For now just spawn three protag test objects
        for (int i = 0; i < 3; i++)
        {
            if (combatActorLookup.Length >= PlayerID)
                playerParty.Add(Instantiate(combatActorLookup[PlayerID], this.transform.position + new Vector3(-2.5f + (2.5f * i), 0, -5.0f), Quaternion.Euler(0, 0, 0)) as GameObject);
        }

        // Enemy Party
        // TODO: Actually spawn the enemy party. For now just summon Dante from the devil may cry series
        for (int i = 0; i < 1; i++)
        {
            if (combatActorLookup.Length >= DanteID)
            {
                enemyParty.Add(Instantiate(combatActorLookup[DanteID], this.transform.position + new Vector3(0.0f + (2.5f * i), 0, 5.0f), Quaternion.Euler(0, 180, 0)) as GameObject);
                enemyParty[i].GetComponent<__Combat_Actor_Script>().teamIndex = 1;
            }
        }

        sortPartyByAgility();

        // Move to the next state;
        advanceCombatState(CombatState.ecs_Intro);
    }

    void sortPartyByAgility()
    {
        allChars.Clear();

        // Add the Players
        for(int i = 0; i < playerParty.Count; i++)
        {
            allChars.Add(playerParty[i]);
        }

        // Add the Enemies
        for (int i = 0; i < enemyParty.Count; i++)
        {
            allChars.Add(enemyParty[i]);
        }
    }

    // Runs every time we enter a new Combat State
    void advanceCombatState(CombatState newState)
    {
        switch (newState)
        {
            case CombatState.ecs_Intro:
                introCameraAnimationPosition = 0.0f;
                break;
            case CombatState.ecs_Dialogue:
                break;
            case CombatState.ecs_Decision:
                if (allChars[turnIndex].GetComponent<__Combat_Actor_Script>().teamIndex == 0)
                {
                    Camera.main.transform.position = allChars[turnIndex].transform.position + (allChars[turnIndex].transform.rotation * allChars[turnIndex].GetComponent<__Combat_Actor_Script>().getCamOffset());
                    Camera.main.transform.rotation = allChars[turnIndex].transform.rotation;
                }

                foreach (GameObject go in allChars)
                {
                    go.GetComponent<__Combat_Actor_Script>().setPosToHome();
                }
                break;
            case CombatState.ecs_Action:
                break;
            case CombatState.ecs_Resolution:
                break;
            case CombatState.ecs_Victory:
                break;
            case CombatState.ecs_PlayerDeath:
                break;
            default: break;
        }
        currentState = newState;
    }

    // Runs every frame to adjust stuff based on our current Combat State
    void stepCombatState()
    {
        switch (currentState)
        {
            case CombatState.ecs_Intro:
                // Update Camera movement
                introCameraAnimationPosition += Time.deltaTime * IntroSpeed;

                Camera.main.transform.position = Vector3.Lerp(IntroCamPosStart, IntroCamPosEnd, IntroCamAnim.Evaluate(introCameraAnimationPosition));
                Camera.main.transform.rotation = Quaternion.Lerp(Quaternion.Euler(IntroCamRotStart), Quaternion.Euler(IntroCamRotEnd), IntroCamAnim.Evaluate(introCameraAnimationPosition));

                if(introCameraAnimationPosition >= 1.0f)
                    advanceCombatState(CombatState.ecs_Dialogue);
                break;
            case CombatState.ecs_Dialogue:
                // TODO: Some stuff here but for now fuck it off
                advanceCombatState(CombatState.ecs_Decision);
                break;
            case CombatState.ecs_Decision:
                // TODO: Make it so this picks a skill based on actual stuff
                turnFrames -= 1;
                if ((allChars[turnIndex].GetComponent<__Combat_Actor_Script>().teamIndex == 0 && Input.GetKeyDown(KeyCode.Z)) || (allChars[turnIndex].GetComponent<__Combat_Actor_Script>().teamIndex == 1))
                {
                    DoAttack(0, 0);
                    advanceCombatState(CombatState.ecs_Action);
                }

                if(GameObject.FindGameObjectWithTag("AttackHandle"))
                {
                    advanceCombatState(CombatState.ecs_Action);
                }
                break;
            case CombatState.ecs_Action:
                // TODO: This might actually be all this state has to do besides Camera work
                if (!GameObject.FindGameObjectWithTag("AttackHandle"))
                {
                    advanceCombatState(CombatState.ecs_Resolution);
                }
                break;
            case CombatState.ecs_Resolution:
                // Increment the turn and if we go over reset the list and go again.
                turnIndex += 1;
                if(turnIndex > allChars.Count - 1)
                {
                    sortPartyByAgility();
                    turnIndex = 0;
                }

                // TODO: Some stuff here but for now fuck it off
                advanceCombatState(CombatState.ecs_Decision);
                break;
            case CombatState.ecs_Victory:
                break;
            case CombatState.ecs_PlayerDeath:
                break;
            default: break;
        }
    }

    void DoAttack(int targetID, int AttackID)
    {
        __Combat_Attack_Script atk = (Instantiate(skillLookup[AttackID], this.transform) as GameObject).GetComponent<__Combat_Attack_Script>();
        atk.User = allChars[turnIndex];

        // TODO: Currently just make it Enemy, should be dependand on Player/Enemy selection and skill type.
        if(allChars[turnIndex].GetComponent<__Combat_Actor_Script>().teamIndex == 0)
            atk.Targets.Add(enemyParty[targetID]);
        else
            atk.Targets.Add(playerParty[(int)Random.Range(0, playerParty.Count)]);
    }
}
