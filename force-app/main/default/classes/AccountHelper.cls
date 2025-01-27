/**
 * This class contains utility methods for common Account-related tasks.
 */
public with sharing class AccountHelper {
    /**
     * @description Updates the description of Accounts for a given set of Ids
     * @param accountIds The set of Account Ids to query
     */
    public static void updateAccountDescriptions(Set<Id> accountIds) {
        List<Account> accountsToUpdate = [SELECT Id, Description FROM Account WHERE Id IN :accountIds];

        for (Account acc: accountsToUpdate) {
            acc.Description = 'Updated Description';
        }

        update accountsToUpdate;
    }
}