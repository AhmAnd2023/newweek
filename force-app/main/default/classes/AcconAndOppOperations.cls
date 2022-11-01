public class AcconAndOppOperations {
//     public static void question4_1() {

//         List<account> accList = [select id, name, AnnualRevenue, Type, AccountSource from Account];
//         system.debug(accList);
    
//     }

// public static list<account> question4_1() {
//     List<Account> accList = new List<Account>
//     accList = [select id, name, AnnualRevenue, Type, AccountSource from Account];
//      system.debug(accList);


//      return accList;
// }
    // public static List<Opportunity> question4_2(string a, string b) {
     

    //     List<opportunity> oppList = new List<Opportunity>();

    //     oppList = [select name, LeadSource, StageName from Opportunity where LeadSource =: a and stageName =: b ];

    //     system.debug(oppList);
    //     return oppList;
        
  /*
     public static void question4_3(){
        List<Account> listAcc = [select AnnualRevenue, name, Type,
                    (select name, amount, stageName from Opportunities WHERE stageName = 'Closed Won')
                    from Account where Type = 'Customer - Direct'];
        for(Account eachAcc: listAcc){
            System.debug(eachAcc);
            for (opportunity eachOpp : eachAcc.Opportunities) {
                System.debug(eachOpp);

    }

    }
}
    public static Account question4_3() {
        
        if (record1.Name!= null){
        Account record1 = new Account();
        record1.name= 'XYZ';
        record1.AnnualRevenu = '600000';
        record1.Type= 'Customer - Direct';
        insert record1;
        } else {
            system.debug('ERROR');
        }

        return record1;
    
}
*/




    public static Decimal AccConAndOppOperations1() {
        List<Opportunity> listOpp = [select id, name, amount from Opportunity where StageName = 'Closed Won' and amount != NULL];
        decimal sum = 0;
        if(listOpp != null && listOpp.size()>0){
            for (Opportunity eachOpp : listOpp) {
                sum += eachOpp.Amount;
            }
            System.debug('Sum of Accounts ____' + sum);
        }
        return sum;
    }
    public static List<Account> accOpp(string StgName){
        List<Account> mylistAcc = new List<Account>();
        List<Account> listAcc = [select id, name, (select accountId from Opportunities where stageName = :StgName) FROM Account];
        if(listAcc != null && listAcc.size()>0){
            for (Account eachAcc : listAcc) {
                mylistAcc.add(eachAcc);
            }
            System.debug('My List Acc----' + mylistAcc);
        }
        return mylistAcc;
    }


    public static void AccConAndOppOperations1 (ID accId){
        


    }
}



