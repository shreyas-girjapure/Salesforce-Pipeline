@isTest
public with sharing class AccountControllerTest {
    @isTest
    public static void getAllAccountsTest() {
        List<Account> accList = new List<Account>();
        Account a1 = new Account();
        a1.Name = 'Test 1';
        accList.add(a1);
        Account a2 = new Account();
        a2.Name = 'Test 2';
        accList.add(a2);
        insert accList;

        List<String> accountIds = new List<String>();

        for (Account acc : accList) {
            accountIds.add(acc.Id);
        }

        AccountController.getAllAccounts(accountIds); 
    }
} 