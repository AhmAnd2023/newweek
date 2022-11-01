public class AccountsBatch implements Database.Batchable<SObject> {
    Integer numberOfRecords = 0;
    Integer count  = 0;
    Integer executionCount=0;
    public Database.QueryLocator start(Database.BatchableContext bc) {
        //write query.
        //sobject is Account
        system.debug('batch started.');
        Database.QueryLocator ql = database.getQueryLocator ([select id, description from account]);
        return ql;

    }

    public void execute(Database.BatchableContext bc, List <Account> scope){
        System.debug('execute method running');
        //dmls
        for(account acc : scope) {
            acc.Description += '...Update via Batch';

        }
        numberOfRecords += scope.size();
        executionCount++;
        system.debug('count is ' + count);
        system.debug('number of records updated till now is ' + numberOfRecords);
        update scope;

    }
    public void finish(Database.BatchableContext bc){
        
        System.debug('number of records:' + numberOfRecords);
        System.debug('execute:' + executionCount);
        System.debug('finish method exe');
    }

}
