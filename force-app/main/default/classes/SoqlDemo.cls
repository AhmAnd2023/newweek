public class SoqlDemo {
    public static void accountSOQL_1() {
        //SOQL ALWAYS returns List<sObject> ==> Whichever sObject we are fetching.
        list<account> listAcc = [select id, name, phone, active__c 
                                from account where name like '%A%'];
        system.debug('account list ===> ' + listAcc);
        system.debug('listAcc # of records ===> ' + listAcc.size());

        Account acc = [select id, name, phone, active__c 
                         from account ORDER BY CreatedDate desc limit 1];
        system.debug('latest created record ===> ' + acc);
    }

    public static void accountSOQL_2() {
        Account acc = [select id, name, phone, active__c, AccountNumber
                         FROM account 
                         ORDER BY CreatedDate 
                         DESC 
                         LIMIT 1];
        system.debug('latest created record ===> ' + acc);
        //store name and phone in string
        string accName = acc.Name;
        string accPhone = acc.phone;
        system.debug('acc name is ' + accName + ' phone is ' + accPhone + ', acc number =' + acc.AccountNumber);
    }

    public static void accountSOQL_3() {
        //SOQL ALWAYS returns List<sObject> ==> Whichever sObject we are fetching.
        list<account> listAcc = [select id, name, phone, active__c, AccountNumber 
                                from account ORDER BY CreatedDate desc];
        system.debug('account list ===> ' + listAcc);

        for (account eachAccount : listAcc) {
            string accName = eachAccount.Name;
            string accPhone = eachAccount.phone;
            system.debug('acc name is ' + accName + ' phone is ' + accPhone + ', acc number =' + eachAccount.AccountNumber);
            system.debug('--------------------');
        }
        
    }
}