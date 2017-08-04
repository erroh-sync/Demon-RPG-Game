///__combat_negotiation_resolve_completed();
if(PassCount >= 3)
{
    if(Scr_LearnSkill(ConversationPartner.TutorSkillIndex, -1))
    {
        __combat_menu_navigate(CombatUIState.MENULASTINDEX); 
    }
    else{
        // TODO: This will trigger if our skills are full. Should bring up a menu to choose one to discard.
        __combat_menu_navigate(CombatUIState.MENULASTINDEX); 
    }
    ConversationPartner.Hitpoints = -9999;
}
else if(FailCount >= 3)
{
    __combat_menu_navigate(CombatUIState.MENULASTINDEX); 
}
