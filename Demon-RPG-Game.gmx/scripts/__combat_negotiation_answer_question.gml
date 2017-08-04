///__combat_negotiation_answer_question();
DialougeBlitString = "";
DialougeFrame = 0;
if(OptionStrings[yPosition] == ConversationPartner.QuestionIndex[QuestionIndex, 1])
{
    PassCount += 2;
    DialougeSourceString = ConversationPartner.QuestionIndex[QuestionIndex, 2];
}
else if(OptionStrings[yPosition] == ConversationPartner.QuestionIndex[QuestionIndex, 3])
{
    PassCount += 1;
    DialougeSourceString = ConversationPartner.QuestionIndex[QuestionIndex, 4];
}
else if(OptionStrings[yPosition] == ConversationPartner.QuestionIndex[QuestionIndex, 5])
{
    FailCount += 1;
    DialougeSourceString = ConversationPartner.QuestionIndex[QuestionIndex, 6];
}

negState = NegotiationState.Response;
