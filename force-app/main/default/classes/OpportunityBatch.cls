public class OpportunityBatch  implements Database.Batchable<SObject>{
    Integer numberofrecord = 0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        //write query.
        //sobject is Account
        system.debug('batch started. congrats.');
        Database.QueryLocator ql = database.getQueryLocator([select id, stagename from Opportunity WHERE StageName = 'Closed Lost']);
        return ql;
    } 

    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
       numberofrecord += scope.size();
       delete scope;
       
    }

    public void finish(Database.BatchableContext bc){
        System.debug('delete record' + numberofrecord);
    }

}