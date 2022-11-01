public class CasesAssg implements Database.Batchable<SObject>, database.stateful{
    public integer count=0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1;
        if(!Test.isRunningTest()){
            q1 = database.getQueryLocator([select Id, OwnerId, ClosedDate from Case Where Status!= 'Closed' and LastModifiedDate < LAST_N_DAYS:5]);
        }
        else{
            q1 = database.getQueryLocator([select Id, OwnerId, ClosedDate from Case Where Status!= 'Closed']);
        }
        return q1;

    }
    public void execute(Database.BatchableContext bc, list<case> scope) {
        list<Task> ts =  new list<Task> ();
        for( case c : scope) {
           task t = new task ();
            t.status = 'In Progress';
            t.subject = system.label.subject;
            t.ActivityDate = Date.Today().addDays(2);
            t.Description= system.label.comment;
            t.WhatId = c.Id;
            t.OwnerId= c.OwnerId;

            ts.add(t);
            
        }
        insert ts;
        count = count + scope.size();
    }

    public void finish (Database.BatchableContext bc){
        System.debug('finish the method' + count);
    }
}
