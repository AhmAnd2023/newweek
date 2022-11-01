public class SalesforceProjectTriggerHandler {
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        try {
        List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c = eachSP.id;
            listST.add(st);
        }
        if (!listST.isEmpty()) {
            insert listST;
        }
        } catch (Exception ex) {
            System.debug('Exception ex: ' + ex);
            System.debug('contact admini');
            //call the code log eroor.
            for (salesforce_project__c eachSP : spTriggerNew) {
                eachSP.addError('Error in creating default ticket.Please contact admin');
            }
        }
     }

    public static void validateProjectCompletion(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld,
                             Map<id, salesforce_project__c> spTriggerNewMap, Map<id, salesforce_project__c> spTriggerOldMap) {
        //get project for which status is updated to 'Completed'
        //compare old and new status to get if project changed to completed.
        set<id> setProjectCompletedIds = new set<id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            if(spTriggerOldMap.get(eachSP.id).Status__c != spTriggerNewMap.get(eachSP.id).Status__c
            && eachSP.Status__c == 'Completed'){
                setProjectCompletedIds.add(eachSP.Id);
            }
        }

        //get all tickets which are not completed
        List<Salesforce_Ticket__c> listST = [select id, name, status__c, Salesforce_Project__c from Salesforce_Ticket__c
                                 where Salesforce_Project__c in :setProjectCompletedIds and status__c !='Completed'];

        for (Salesforce_Ticket__c eachST : listST) {
            Salesforce_Project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.addError('Cannot complete project because all its tickets are not completed.');
        }
    }
    @future
    public static void updateProjectDescription(set<id> setIds) {
        system.debug('called from future.');
        system.debug('set of ids ==> ' + setIds);
        
        //fetch project records of given setIds.
        List<Salesforce_Project__c> listSP = [select id, description__c from Salesforce_Project__c where id in :setIds];

        //for each loop and update description of fetched projects
        for (salesforce_project__c sp : listSP) {
            sp.Description__c += '. updated from future it is.';
        }
        //update dml
        update listSP;
    }
}