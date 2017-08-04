///__combat_menu_set_properties();

switch(State)
{
    case CombatUIState.CommandMenu:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 0;
        yMax = 4;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = true;
        b_horizontalsounds = false;
        b_verticalsounds = true;
        b_selectsounds = true;
        b_backsounds = false;        
        ActiveSpeedLineIndex = 1;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.WeaponTargetMenu:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = instance_number(Obj_EnemyData) - 1;
        yMax = 1;
        if(yPosition == 0)
        {
            Obj_CombatRenderer.TType = TargetType.Gun;
            if(xMax == 0)
                b_horizontalsounds = false;
            else
                b_horizontalsounds = true;
        }
        else
        {
            Obj_CombatRenderer.TType = TargetType.None;
            b_horizontalsounds = false;
        }
        ShowPlayerStats = false;
        b_verticalsounds = true;
        b_selectsounds = true;
        b_backsounds = true;
        ActiveSpeedLineIndex = 2;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.ACTION_Weapon:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 0;
        yMax = 0;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = false;
        b_verticalsounds = false;
        b_selectsounds = false;
        b_backsounds = true;
        b_horizontalsounds = false;
        ActiveSpeedLineIndex = 2;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.AmmoMenu:
    {                
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = array_height_2d(Obj_SkillItemData.AmmoData) - 1;
        yMax = 1;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = false;
        b_horizontalsounds = true;
        b_verticalsounds = true;
        b_selectsounds = true;
        b_backsounds = true;
        ActiveSpeedLineIndex = 0;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.SkillMenu:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 0;
        yMax = 7;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = true;
        b_horizontalsounds = false;
        b_verticalsounds = true;
        if(Obj_PlayerData.SkillArray[yPosition] != 0)
            b_selectsounds = true;
        else
            b_selectsounds = false;
        b_backsounds = true;
        ActiveSpeedLineIndex = 1;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.SkillTargetMenu:
    {
        var tst = Obj_SkillItemData.SkillData[Obj_PlayerData.SkillArray[StoredSkillMenuPosition], 3];
                
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = instance_number(Obj_EnemyData) - 1;
        yMax = 0;
        Obj_CombatRenderer.TType = TargetType.Magic;
        ShowPlayerStats = true;
        if(xMax == 0 || tst == WhoToTarget.wtt_Ally || tst == WhoToTarget.wtt_AllAlly || tst == WhoToTarget.wtt_SelfNone)
            b_horizontalsounds = false;
        else
            b_horizontalsounds = true;
        b_verticalsounds = false;
        b_selectsounds = true;
        b_backsounds = true;
        ActiveSpeedLineIndex = 2;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.COMBATFINALIZE_Skill:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 0;
        yMax = 0;
        Obj_CombatRenderer.TType = TargetType.None;
        if(!instance_exists(Obj_CombatMinigameMaster)) 
            ShowPlayerStats = false;
        else
            ShowPlayerStats = true;
        b_horizontalsounds = false;
        b_verticalsounds = false;
        b_selectsounds = false;
        b_backsounds = false;
        ActiveSpeedLineIndex = 2;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.TalkTargetMenu:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = instance_number(Obj_EnemyData) - 1;
        yMax = 0;
        Obj_CombatRenderer.TType = TargetType.Talk;
        ShowPlayerStats = false;
        if(xMax == 0)
            b_horizontalsounds = false;
        else
            b_horizontalsounds = true;
        b_verticalsounds = false;
        b_selectsounds = true;
        b_backsounds = true;
        ActiveSpeedLineIndex = 0;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.TalkConverseMenu:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 0;
        yMax = 2;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = false;
        if(xMax == 0)
            b_horizontalsounds = false;
        else
            b_horizontalsounds = true;
        b_verticalsounds = false;
        b_selectsounds = true;
        b_backsounds = true;
        ActiveSpeedLineIndex = 0;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.FleeMenu:
    {        
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 1;
        yMax = 0;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = false;
        b_horizontalsounds = true;
        b_verticalsounds = false;
        b_selectsounds = true;
        b_backsounds = true;
        ActiveSpeedLineIndex = 2;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.OPEN_PlayerTurn:
    {    
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 0;
        yMax = 0;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = false;
        b_horizontalsounds = false;
        b_verticalsounds = false;
        b_selectsounds = false;
        b_backsounds = false;        
        ActiveSpeedLineIndex = 0;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.CLOSE_EnemyTurn:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 0;
        yMax = 0;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = false;
        b_horizontalsounds = false;
        b_verticalsounds = false;
        b_selectsounds = false;
        b_backsounds = false;        
        ActiveSpeedLineIndex = 0;
        //////////////////////////////////////////////
        break;
    }
    case CombatUIState.MENULASTINDEX:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 0;
        yMax = 0;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = false;
        b_horizontalsounds = false;
        b_verticalsounds = false;
        b_selectsounds = false;
        b_backsounds = false;        
        ActiveSpeedLineIndex = 0;
        //////////////////////////////////////////////
        break;
    }    
    case CombatUIState.ResultsScreen:
    {
        /*********************************************
        // Set Properties
        *********************************************/
        xMax = 0;
        Obj_CombatRenderer.TType = TargetType.None;
        ShowPlayerStats = false;
        b_horizontalsounds = false;
        if(Obj_CombatManager.XPGainedDuringBattle <= 0 && Obj_CombatManager.GoldGainedDuringBattle <= 0 && StatBoostsRemaining > 0){
            b_verticalsounds = true;
            b_selectsounds = true;
            yMax = 3;
        }else{
            b_verticalsounds = false;
            b_selectsounds = false;
            yMax = 0;
        }
        b_backsounds = false;        
        ActiveSpeedLineIndex = 0;
        //////////////////////////////////////////////
        break;
    }
}
