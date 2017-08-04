///__combat_negotiation_intro_completed();
QuestionIndex = irandom(array_height_2d(ConversationPartner.QuestionIndex) - 1);
DialougeBlitString = "";
DialougeFrame = 0;
DialougeSourceString = ConversationPartner.QuestionIndex[QuestionIndex, 0];

if(ConversationPartner.RejectCommunication)
    State = CombatUIState.MENULASTINDEX;
else
{
    yPosition = 0;
    var j = irandom(2)
    for(var i = 1; i < 6; i += 2)
    {
        OptionStrings[j] = ConversationPartner.QuestionIndex[QuestionIndex, i];
        j += 1;
        if(j > 2)
            j = 0;
    }
    negState = NegotiationState.Question;
}
