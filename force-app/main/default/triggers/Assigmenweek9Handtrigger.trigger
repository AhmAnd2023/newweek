trigger Assigmenweek9Handtrigger on Case (before insert, after insert) {
    
    if(trigger.isAfter && trigger.isInsert){
        Assigmenweek9Handler.createChildCase(trigger.new, trigger.newMap);


    }
    
   
}