public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getRelatedContacts(Id accountId){
        try {
            retrun[
                SELECT Name, Title, Email, Phone
                FROM Contact
                WHERE AccountId = :accountId
                WITH SECURITY_ENFORCED
            ]; 
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    public AccountController() {

    }
}
