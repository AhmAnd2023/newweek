@isTest
public class AccountQueueableExampleTest {
@TestSetup
static void makeData(){
    List<Account> accs = new List<Account>();
    for(Integer i= 0; i<200; i++ ){
        account a = new account(name= 'Test account ' + i);
        accs.add(a);
    }
    insert accs;

    }
    @isTest
    private static void testQueeable(){
        List<Account> allAccs = [select id, name from account];
        AccountQueueableExample aq = new AccountQueueableExample(allAccs);
        Test.startTest();
        system.enqueueJob(aq);
        Test.stopTest();

        List<Account>resultAcc = [select id, name from account where name like '%SI%'];
        system.assertEquals(200, resultAcc.size());

    }
}
