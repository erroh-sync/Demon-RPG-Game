///__combat_menu_navigate(newState);

switch(argument0){
    case CombatUIState.CommandMenu:
    {
        switch(State)
        {
            case CombatUIState.WeaponTargetMenu:
                yPosition = 0;
                break;
            case CombatUIState.SkillMenu:
                yPosition = 1;
                break;
            case CombatUIState.ItemMenu:
                yPosition = 2;
                break;
            case CombatUIState.TalkTargetMenu:
                yPosition = 3;
                break;
            case CombatUIState.FleeMenu:
                yPosition = 4;
                break;
        }
        xPosition = 0;
        break;
    }
    case CombatUIState.WeaponTargetMenu:
    {
        if(State == CombatUIState.AmmoMenu)
            yPosition = 1;
        else
            yPosition = 0;
        xPosition = 0;
    }
    case CombatUIState.AmmoMenu:
    {
        xPosition = Obj_PlayerData.CurrSelectedAmmo;
        yPosition = 0;
    }
    case CombatUIState.FleeMenu:
    {
        xPosition = 1;
        yPosition = 0;
        break;
    }
    default:
    {
        xPosition = 0;
        yPosition = 0;
        break;
    }
}

State = argument0;
