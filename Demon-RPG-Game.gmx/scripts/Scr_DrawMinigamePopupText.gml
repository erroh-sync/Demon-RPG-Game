///Scr_DrawMinigamePopupText();
if(TextTimer > 0)
{
    var tX = lerp(TextOriginX, TextOriginX + (TextDirX * TextMovementAmount), 1 - TextTimer/TextTimerMax);
    var tY = lerp(TextOriginY, TextOriginY + (TextDirY * TextMovementAmount), 1 - TextTimer/TextTimerMax);
    var PopupSprite = GUI_Combat_Misc_MissPopup;
    
    var SclIn = sin(clamp((TextTimerMax - TextTimer)/(TextTimerMax/8),0,pi * 0.6)) * 1.2;
    var SclOut = sin(clamp(TextTimer/(TextTimerMax/6),0,pi * 0.6)) * 1.12;
    
    switch(TextType)
    {
        case MinigamePopupText.empt_Okay: PopupSprite = GUI_Combat_Misc_OkayPopup;
            break;
        case MinigamePopupText.empt_Good: PopupSprite = GUI_Combat_Misc_GoodPopup;
            break;
        case MinigamePopupText.empt_Great: PopupSprite = GUI_Combat_Misc_GreatPopup;
            break;
        case MinigamePopupText.empt_Perfect: PopupSprite = GUI_Combat_Misc_PerfectPopup;
            break;
    }
    
    draw_sprite_ext(PopupSprite, 0, tX, tY, SclIn * SclOut, SclIn * SclOut, 0.0, c_white, 1.0);
}
