public with sharing class AccountController {
    public AccountController() {
    }
    @AuraEnabled
    public static List<Account> getAllAccounts(List<String> accountIds) {
        List<Account> accountList = new List<Account>();
        try {
            if (Account.getSObjectType().getDescribe().isAccessible()) {
                accountList = [
                    SELECT id, Name
                    FROM Account
                    WHERE id IN :accountIds
                    LIMIT 10
                ];
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return accountList;
    }
}