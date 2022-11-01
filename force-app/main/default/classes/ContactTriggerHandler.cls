public class ContactTriggerHandler {
    public static void updateAccNumberOfContacts(Lİst<contact> contTriggerNew, list<contact> conTriggerOld) {
        set<id> accountIds = new set <id>();
        if(Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete) {
            for(Contact eachCont : contTriggerNew) {
                accountIds.add(eachCont.AccountId);
            }
        }
        if(Trigger.isUpdate || Trigger.isdelete) {
            for(Contact eachCont : contTriggerOld) {
                accountIds.add(eachCont.AccountId);
            }
        }
        if(!accountIds.isEmpty()) {
            List<account> listacc = [select is, number_of_contacts__c,(select id from contacts) from account where id in : accountIds];
             list<account> updateAcc = new list <account>();
             for(account eachAcc : listAcc) {
                eachAcc.Number_of_contacts__c = eachAcc.contacts.size();
                updateAcc.add(eachAcc);
             }
             update updateAcc;
            }
            }
        public static void validateProjectCompletion(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld,
            Map<id, salesforce_project__c> spTriggerNewMap, 
            Map<id, salesforce_project__c> spTriggerOldMap) {

} 
        }


    

