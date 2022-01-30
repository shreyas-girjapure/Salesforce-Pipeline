public with sharing class AccountController {
    public AccountController() {

    }
    @AuraEnabled
    public static List<Account> getAllAccounts(List<String> accountIds){
        List<Account> accountList = new List<Account>();
        try {
            if(Account.getSObjectType().getDescribe().isAccessible()){
                accountList = [select id , Name from Account where id IN :accountIds limit 10];
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    } 
}
