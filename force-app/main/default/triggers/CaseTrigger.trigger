trigger CaseTrigger on Case (before insert) {
    List<Case> listOfNewCases = Trigger.new;
    Case caseRec = listOfNewCases[0];
    if(caseRec.AccountId == null) {
        //caseRec.addError(System.Label.AccountError);
    }
}