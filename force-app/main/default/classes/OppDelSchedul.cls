public class OppDelSchedul implements Schedulable {
    public void execute(SchedulableContext sc){
        //here we can any apex code.
        //list
        //for each
        //update

        //to call batch here.
        database.executeBatch(new OpportunityBatch());
        
    }
}

