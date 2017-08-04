///__combat_menu_return_action();
if( State == CombatUIState.OPEN_PlayerTurn ||
    State == CombatUIState.ACTION_Weapon ||
    State == CombatUIState.COMBATFINALIZE_Skill ||
    State == CombatUIState.TalkConverseMenu || 
    State == CombatUIState.CLOSE_EnemyTurn ||
    State == CombatUIState.ResultsScreen ||
    State == CombatUIState.MENULASTINDEX)
        return false;

switch(State)
{
    case CombatUIState.AmmoMenu:
    {                       
        if(Obj_InputManager.InputSelectAxisDown < 0)
            __combat_menu_navigate(CombatUIState.WeaponTargetMenu);    
        break;
    }
    case CombatUIState.SkillTargetMenu:
    {      
        if(Obj_InputManager.InputSelectAxisDown < 0){            
            __combat_menu_navigate(CombatUIState.SkillMenu);
        }
        break;
    }
    default:
    {       
        if(Obj_InputManager.InputSelectAxisDown < 0)
                __combat_menu_navigate(CombatUIState.CommandMenu);
        break;
    }
}
