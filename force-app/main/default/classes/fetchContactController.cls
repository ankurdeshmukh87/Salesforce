public with sharing class fetchContactController {
    public fetchContactController() {
        
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        try {
            return [select Id, FirstName, LastName, Email from Contact ];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsByIdName(Id id, String name){
        try {
            return [select Id, FirstName, LastName, Email from Contact where Id = : id and FirstName = : name ];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable=true)
    public static String getAccountIdByUserId(){
        //System.debug('enter');
        try {
            User usrRec = [SELECT AboutMe FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];
            return 'https://www.india.com/' + usrRec.AboutMe;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}