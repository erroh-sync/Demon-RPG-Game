///Scr_CalcExpToNextLevel

var Exp =  power(Obj_PlayerData.Level, 2) + 14;

if(Exp > 999)
{
    return 999;
}

return Exp;
