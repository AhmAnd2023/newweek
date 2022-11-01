public class AssAccountHandler {
    public static void AssAccountHandler(List<account> accTriggerNew) {
        list<contact> conListTriggernew = new list<contact>();
        

        for(account acc : accTriggerNew ){
            contact cnt = new contact ();
            cnt.accountId = acc.Id;
            cnt.LastName = acc.Name;
            cnt.Phone= acc.Phone;
        
            conListTriggernew.add(cnt);
        
        
        } 
        if (!conListTriggernew.isEmpty()){
            insert conListTriggernew;
        }

    }
    public static void AccUptadestageHandler(List<account> accTriggerNew) {
        list<opportunity> OppListTriggernew = new list<Opportunity>();
        
        OppListTriggernew = [select id, stageName from opportunity where AccountId in : accTriggerNew AND stageName !='Closed Won'];

        for(opportunity Opp : OppListTriggernew){
            
            
            opp.StageName ='Closed Lost';

        }
            
            update OppListTriggernew;
    }
    public static void AccUptadephoneHandler(Map<Id,Account> accTriggerNewMap,                        Map<Id,Account> 
    accTriggerOldMap) {
        list<contact> ContListTriggernew = new list<contact>();
        ContListTriggernew = [select id, otherPhone,mobilePhone, AccountId from Contact where AccountId in : accTriggerNewMap.keySet()  ];
        for(Contact c : ContListTriggernew){
              
            c.otherphone = accTriggerOldMap.get(c.AccountId).Phone;
            c.mobilephone = accTriggerNewMap.get(c.AccountId).phone;
        }
            update contListTriggernew;
    }
}

   

