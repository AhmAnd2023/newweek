public class DmlDemo {
    public static void  dmlInsertDemo_StnObj1() {
        //1.create new ınstance
        account acc= new account();
        //2.set field values
        acc.Name = 'SoftInnovas';
        //3.set other fields
        acc.phone = '9876523121';
        //4.inseert now
        insert acc ;
        system.debug(acc);

    }
    public static void dmlInsertDemo_cstObj1() {
        Salesforce_Project__c sp =new Salesforce_Project__c();
        sp.Project_Name__c='Teach DML to Batch9 the great';
        sp.Description__c= 'All %50 are great learners';
        insert sp;
        
    }
    public static void dmlUpdateDemo_1() {
      
        Account acc= new account();
        
        acc.name = 'anything';
             
        
        system.debug('before inserting acc ===>' + acc);
        insert acc;
        system.debug('after INSERT acc===>' + acc);

        //1.set new field value
        acc.Name = 'Salesforce Inc.';
        //2.now come update DML
        update acc;
        system.debug('after update acc===>' + acc);
    
    }

    public static void dmlUpdateDemo_2() {
        account acc = [select id, name from account where name = 'SoftInnovas' limit 1];

        //change the name in acc
        acc.name = 'SoftInnovas Inc.';
        //update DML
        update acc;
    }

    public static void dmlInsertDemo_2() {

        Account acc = [Select id, name from account ORDER BY CreatedDate desc limit 1];
         
        //CREATE CONTACT FOR latest CREATED ACCOUNT
        contact cont = new contact();
        cont.LastName = 'Biden';
        cont.AccountId = acc.id;
        insert cont;
    }

    public static void dmlInsertDemo_3() {

        Salesforce_Project__c sp = [Select id from Salesforce_Project__c ORDER BY CreatedDate desc limit 1];

        //create new ticket
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn APEX DML';
        st.Description__c ='kinda simple';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2022, 8, 1);

        //set relationship field
        st.Salesforce_Project__c = sp.id;
        insert st;
    }

    public static void dmlMultipleRecordInsert_right1() {

        //create new empty list
        List<account> listaccount = new List<account>();


        //insert acc1
        account acc1 = new Account();
        acc1.Name = 'bulk acc1';
        listaccount.add(acc1);
         
        //insert acc2
        account acc2 = new Account();
        acc2.Name = 'bulk acc2';
        listaccount.add(acc2);

          //insert acc3
        account acc3 = new Account();
        acc3.Name = 'bulk acc3';
        listaccount.add(acc3);

        insert listaccount;  //insert LİST
      
    }

    public static void dmlMultipleRecordInsert_right2() {

        //create new empty list
        List<account> listacc = new List<account>();

        for (Integer i = 0; i < 155; i++) {
            account a = new account();
            a.Name = 'SoftInnovas 30ct-v' + i;
            a.Active__c = 'Yes';

            listacc.add(a);
           
            
        }
        insert listacc;
    }
    
    public static void dmlMultipleRecordUpdate_right2() {
        list<account> fetchAccount = [select id, name from account ORDER BY CreatedDate limit 155];
        List<Account> updateAcc = new list<account>();

        for (account eachAcc : fetchAccount) {
            eachAcc.Name += ' Via B.0';  // i+=1   (i= i +1)  eachAcc.Name = eachAcc.Name + 'Via B.0'
            eachAcc.AccountNumber= ' 987454ABCZ';
            updateAcc.add(eachAcc);
        }
        if(!updateAcc.isEmpty()){

            update updateAcc;

        }

       
        }
   
        
}


