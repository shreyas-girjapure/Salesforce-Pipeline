public with sharing class ContactController {
    @AuraEnabled
    public static string sayHi(String name) {
        try {
            String tempName = name;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}