///__combat_negotiation_response_completed();
if(PassCount >= 3)
{
    DialougeBlitString = "";
    DialougeFrame = 0;
    DialougeSourceString = ConversationPartner.DialougeSuccededString;
    negState = NegotiationState.Resolution;
}
else if(FailCount >= 3)
{
    DialougeBlitString = "";
    DialougeFrame = 0;
    DialougeSourceString = ConversationPartner.DialougeFailedString;
    negState = NegotiationState.Resolution;
}
else
{
    //Transition to Question State
    QuestionIndex = irandom(array_height_2d(ConversationPartner.QuestionIndex) - 1);
    DialougeBlitString = "";
    DialougeFrame = 0;
    DialougeSourceString = ConversationPartner.QuestionIndex[QuestionIndex, 0];
    
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
