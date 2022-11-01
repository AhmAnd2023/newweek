trigger odevtrigger on Customer__c (before delete) {
    
   /* odevtriggerHandler.AmountTrigger_Handler(trigger.new);
*/

   odevtriggerHandler.CusAct(trigger.old);

}







