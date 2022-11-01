trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
    /*
    system.debug('---start---');
    system.debug('We are in the triggers');
    if(trigger.isAfter)  {
        system.debug('We are in the after triggers');
        if(trigger.isInsert){
            system.debug('We are in the after-Insert triggers');
        }
        if(trigger.isUpdate){
        system.debug('We are in the after-Update triggers');
        }
    }
    
   if(trigger.isbefore) {
    system.debug('We are in the before triggers');
    if(trigger.isInsert){
            system.debug('We are in the before-Insert triggers');
        }
        if(trigger.isUpdate){
        system.debug('We are in the before-Update triggers');
         }
        
    }
    
    system.debug('---end---');
     */
// if(trigger.isUpdate && trigger.isAfter){
//     map<id, Case> CsOlds = trigger.oldMap;
    
//         for (Case Cs : trigger.new) {
//             if (CsOlds.get(Cs.Id).Origin != Cs.Origin){
//                 system.debug('Case origin is changed for ==> ' + Cs.CaseNumber);

//             // system.debug('Case origin is changed for ==> ' + CsOlds.get(Cs.Id).Origin);
//             // system.debug('New Origin===>' + Cs.CaseNumber +  Cs.Origin );
        
//         }
   
//  } 
// }

if(trigger.isBefore && trigger.isInsert) {
    CaseTriggerHandler.Mahmut(Trigger.new);
    


}



}
 