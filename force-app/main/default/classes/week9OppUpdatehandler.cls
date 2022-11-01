public class week9OppUpdatehandler {
    @future
    public static void oppupdatefuture(set<id> accIds) {

        List<account> ListAcc = [Select id, Highest_Amount_Opportunity_Name__c , (select name, amount FROM opportunities WHERE amount != null ORDER BY amount DESC ) FROM account WHERE Id =:accIds];

        System.debug(ListAcc);
         for(account acc : ListAcc){
            if( acc.opportunities.size()>0 ){
                acc.Highest_Amount_Opportunity_Name__c = acc.opportunities[0].name;
                


            }else{
                acc.Highest_Amount_Opportunity_Name__c = null;
            }

         }        
            update ListAcc;



    }
}
