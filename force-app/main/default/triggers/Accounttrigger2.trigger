trigger Accounttrigger2 on Account (before insert, before update, after insert, after update) {
    system.debug('====trigger start======');
    //.isBefore -> true when in BEFORE trigger
    //.isInsert -> true when in INSERT trigger


    if (trigger.isAfter) {
        System.debug('after trigger trigger.new===>' + trigger.new);
        
    }
    system.debug('====trigger end====');


 

/*
    if (trigger.isBefore) {
        System.debug('BEFORE (insert or update)  trigger called.');
        if (trigger.isInsert) {
            System.debug('BEFORE insert trigger called.');
            if (trigger.isUpdate) {
                System.debug('BEFORE update trigger called.');
                if (trigger.isAfter) {
                    System.debug('AFTER (insert or update)  trigger called.');
                    if (trigger.isInsert) {
                        System.debug('AFTER insert trigger called.');
                        if (trigger.isUpdate) {
                            System.debug('AFTER update trigger called.');

        
    }
}
                }
            }
        }
    }
    */
}



    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('Before insert account trigger called.');
    } 
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('After insert account trigger called.');
    }
    
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('Before update account trigger called.');
    } 
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('After update account trigger called.');
    }
*/
    




    // if (trigger.isInsert) {
    // system.debug(' BEFORE insert trigger called');
    // }

    // if (trigger.isUpdate) {
    //     System.debug('BEFORE update account trigger called');
        
    // }

        
 





/*
    System.debug('=====Trigger start======');
    system.debug('before insert account trigger called');
    System.debug('before update account trigger called.');
    System.debug('===Trigger end===');
*/


    //print before insert debug only in BEFORE TRIGGER 
   // system.debug(' before account after trigger called');


       //print after insert debug only in AFTER TRIGGER 
   // system.debug(' after account after trigger called');

/*
   if(trigger.isBefore)
   System.debug('BEFORE insert trigger');

   if (trigger.isAfter)
   System.debug('AFTER insert trigger');
*/
    
   



