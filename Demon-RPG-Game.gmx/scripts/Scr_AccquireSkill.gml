///Scr_LearnSkill( SkillToLearn, SlotToLearnIn);

if(argument1 != -1)
{
    for(var i = 0; i < array_height_2d(Obj_PlayerData.SkillArray) + 1; i += 1)
    {
        if(Obj_PlayerData.SkillArray[i] == 0)
        {
            Obj_PlayerData.SkillArray[i] = argument0;
            return true;
        }
    }
    return false;
}else{
    Obj_PlayerData.SkillArray[argument1] = argument0;
    return true;
}
