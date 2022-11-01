public class odevtriggerHandler {
    public static void AmountTrigger_Handler(List<Customer__c> TriggerCusNew) {
        list<Payments__c> ListOfPayment = new list<Payments__c>();
        for(Customer__c eachcus : TriggerCusNew){
         Payments__c py= new Payments__c();
         py.amount__c= 0.1;
         py.mode__c= 'Online';
         py.Customer__c = eachcus.id;
         ListOfPayment.add(py);

         Payments__c py1= new Payments__c();
         py1.amount__c= 1;
         py1.mode__c= 'Crypto';
         py1.Customer__c = eachcus.id;
         ListOfPayment.add(py1);
        }
        system.debug(ListOfPayment);
      if(ListOfPayment.size()>0){
         insert ListOfPayment;
         system.debug(ListOfPayment);
      }
   }

   public static void CusAct(List<Customer__c> TriggerCusOld) {
      Set<Id> Active = new Set<Id>();
      Set<Id> InActive = new Set<Id>();
      
      List<Payments__c> delpayments = new list <Payments__c>();
      
      for(Customer__c eachcus : TriggerCusOld){
         if (eachcus.Active__c == True) {
            Active.add(eachcus.id); 
         } else{
            InActive.add(eachcus.id);
         } 
      }

      list<Payments__c> ListOfPayment = [Select Id from Payments__c WHERE Customer__c IN: Active];
      if ( !ListofPayment.isEmpty()){
         delete ListOfPayment;
      }
      list<Payments__c> ListOfPayment2 = [Select Id from Payments__c WHERE Customer__c IN: InActive AND Mode__c = 'Online'];

      if ( !ListofPayment2.isEmpty()){
         delete ListOfPayment2;
      }

   
   }
   public static void CusTotal(List<Customer__c> TriggerCusTotal) {

      List<payments__c> ListOfTotal = new List<payments__c>;
      

      
   }


}










