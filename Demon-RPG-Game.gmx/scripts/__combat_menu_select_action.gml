///___combat_menu_select_action();

switch(State){
    case CombatUIState.CommandMenu:
    {                  
        if(Obj_InputManager.InputSelectAxisDown > 0){
            switch(yPosition)
            {
                case 0:     __combat_menu_navigate(CombatUIState.WeaponTargetMenu); // Weapon
                    break;
                case 1:     __combat_menu_navigate(CombatUIState.SkillMenu); // Skill
                    break;
                case 2:     //__combat_menu_navigate(CombatUIState.ItemMenu); // Item
                    break;
                case 3:     __combat_menu_navigate(CombatUIState.TalkTargetMenu); // Talk
                    break;
                case 4:     __combat_menu_navigate(CombatUIState.FleeMenu); // Talk
                    break;
            }
        }
        break;
    }
    case CombatUIState.WeaponTargetMenu:
    {        
        if(Obj_InputManager.InputSelectAxisDown > 0){
            if(yPosition == 0 && Obj_PlayerData.AmmoInvArray[Obj_PlayerData.CurrSelectedAmmo] > 0)
            {    
                instance_create(0,0,Obj_ShootingMinigame);
                Scr_Combat_FocusCamera(xPosition, 10);
                __combat_menu_navigate(CombatUIState.ACTION_Weapon);
            }else
                __combat_menu_navigate(CombatUIState.AmmoMenu);
        }
        break;
    }
    case CombatUIState.AmmoMenu:
    {                      
        if(Obj_InputManager.InputSelectAxisDown > 0){
            if(yPosition == 0)
            {
                if(Obj_PlayerData.AmmoInvArray[xPosition] > 0)
                    Obj_PlayerData.CurrSelectedAmmo = xPosition;
            }else
                __combat_menu_navigate(CombatUIState.WeaponTargetMenu);
        }
        break;
    }
    case CombatUIState.SkillMenu:
    {       
        if(Obj_InputManager.InputSelectAxisDown > 0){            
            if(Obj_PlayerData.SkillArray[yPosition] != 0)
            {                
                if(__check_skill_cost(Obj_SkillItemData.SkillData[Obj_PlayerData.SkillArray[yPosition], 2]))
                    __combat_menu_navigate(CombatUIState.SkillTargetMenu);
            }
        }
        break;
    }
    case CombatUIState.SkillTargetMenu:
    {
        if(Obj_InputManager.InputSelectAxisDown > 0){
            var Cost = Obj_SkillItemData.SkillData[Obj_PlayerData.SkillArray[StoredSkillMenuPosition], 2];
            if(Cost > 0)
            {
                Obj_PlayerData.ManaFlashTimer = 3.0;
                Obj_PlayerData.ManaFlashAmount = Obj_PlayerData.Manapoints;
                Obj_PlayerData.Manapoints -= Cost;
            }
            else if(Cost < 0)
            {
                Obj_PlayerData.HealthFlashTimer = 3.0;
                Obj_PlayerData.HealthFlashAmount = Obj_PlayerData.Hitpoints;
                Obj_PlayerData.Hitpoints -= abs(Cost);
            }                
            instance_create(0,0,Obj_SkillItemData.SkillData[Obj_PlayerData.SkillArray[Obj_CombatUI.StoredSkillMenuPosition], 4]); // TODO: Replace with attack specific minigame
            __combat_menu_navigate(CombatUIState.COMBATFINALIZE_Skill);
        }
        break;
    }
    case CombatUIState.TalkTargetMenu:
    {               
        if(Obj_InputManager.InputSelectAxisDown > 0){
            Scr_Combat_FocusCamera(xPosition, 40);
            ConversationPartner = instance_find(Obj_EnemyData, xPosition);
            __combat_menu_navigate(CombatUIState.TalkConverseMenu); 
        }
        break;
    }
    case CombatUIState.TalkConverseMenu:
    {        
        if(Obj_InputManager.InputSelectAxisDown > 0){
            __combat_negotiation_skip();
            if(DialougeFrame  >= string_length(DialougeSourceString)){
                switch(negState)
                {
                    case NegotiationState.Intro:
                    {
                        if(bPlayersKnowsSkill)
                            __combat_menu_navigate(CombatUIState.CommandMenu);
                        else
                            __combat_negotiation_intro_completed();
                        break;
                    }
                    case NegotiationState.Question:
                    {
                        __combat_negotiation_answer_question();
                        break;
                    }   
                    case NegotiationState.Response:
                    {
                        __combat_negotiation_response_completed();
                    break;
                    }
                    case NegotiationState.Resolution:
                    {
                        __combat_negotiation_resolve_completed();
                    }
                }
            }
        }
        break;
    }
    case CombatUIState.FleeMenu:
    {   
        if(Obj_InputManager.InputSelectAxisDown > 0){
            if(xPosition == 0)
            {
                if(Obj_CombatManager.bCanFlee && irandom(4) > instance_number(Obj_EnemyData)){
                __combat_end();
                }else{
                    __combat_menu_navigate(CombatUIState.MENULASTINDEX);
                    var Popup = instance_create(0,0, Obj_SkillPopup);
                    Popup.OverrideString = "Can't Escape!";
                }
            }else{
                __combat_menu_navigate(CombatUIState.CommandMenu);
            }
        }
        break;
    }   
    case CombatUIState.ResultsScreen:
    {
        // Skipped Stuff & Stat Up Inputs
        if(Obj_InputManager.InputSelectAxisDown > 0){
            if(ResultsScreenTimer > 0)
                ResultsScreenTimer = 0;
            else{
                if(Obj_CombatManager.XPGainedDuringBattle > 0)
                {                        
                    Obj_PlayerData.Experience += Obj_CombatManager.XPGainedDuringBattle;
                    Obj_CombatManager.XPGainedDuringBattle = 0;
                    while(Scr_CheckForLevelUp())
                    {
                        LevelUpAnimTimer = LevelUpAnimTimerMax;
                        StatBoostsRemaining += 1;
                    }
                    ResultsScreenTimer = ResultsScreenTimerMax;
                }
                else if(Obj_CombatManager.GoldGainedDuringBattle > 0)
                {
                    Obj_PlayerData.Gold += Obj_CombatManager.GoldGainedDuringBattle;
                    Obj_CombatManager.GoldGainedDuringBattle = 0;
                    ResultsScreenTimer = ResultsScreenTimerMax;
                }
                // Picking Stats Here
                else if(StatBoostsRemaining > 0)
                {
                    switch(yPosition){
                        case 0: Obj_PlayerData.Strength += 1; break;
                        case 1: Obj_PlayerData.Endurance += 1; break;
                        case 2: Obj_PlayerData.Agility += 1; break;
                        case 3: Obj_PlayerData.Luck += 1; break;
                    }
                    StatBoostsRemaining -= 1;
                }
                else
                    __combat_end();
            }
        }
        break;
    }
}
