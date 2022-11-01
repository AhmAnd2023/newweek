trigger AssigmenWeek9Test on Case (before insert, after insert) {
    if(trigger.isAfter && trigger.isInsert){
        AssigmenWeek9Test.AssigmenWeek9Test(trigger.new, trigger.newMap);


    }
    
   
}