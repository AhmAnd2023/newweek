@isTest 
public class AccountsBatchTest {
    @isTest 
    private static void testBatch1() {
        //1 prepare date
        List<account> ListAcc = new List<account>();
        for( Integer i = 0; i< 900; i++){
            account a= new account();
            a.Name = 'Test acc batch'+ i;
            listAcc.add(a);
        }
        insert ListAcc;

        //2 starttest, stoptest
        Test.starttest();
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(new AccountsBatch(), 950);
        Database.executeBatch(ab, 900);
        Test.stoptest();

        List<Account> results = [Select id, description from account];
        system.assert(results[0].Description.contains('Batch'));

    }
}
