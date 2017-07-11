///Scr_FormatNumString(Number, Length);

var NumZeroes = argument1;
var String = string(argument0);

NumZeroes -= string_length(String);

while(NumZeroes > 0)
{
    String = "0" + String;
    NumZeroes -= 1;
}

return String;
