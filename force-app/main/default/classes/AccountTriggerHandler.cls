public  class AccountTriggerHandler {
    public static void updateDescription(List<account> accTriggerNew, 
        List<account> accTriggerOld,
         Map<id, account> accTriggerNewMap,
        Map<id, account> accTriggerOldMap) {

        for (account eachAcc : accTriggerNew) {
            boolean updateDesc = false;
            if (accTriggerOldMap == null && eachAcc.Active__c == 'Yes') {
                updateDesc = true;
            }
            if (accTriggerOldMap != null) {
                if (eachAcc.Active__c == 'Yes' 
                && accTriggerOldMap.get(eachAcc.Id).Active__c != accTriggerNewMap.get(eachAcc.Id).Active__c) {
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAcc.Description = 'Account is now Active. ENJOY!';
            }
        }
    }
    public class ContactTriggerHandler {
        public static void contactUpdateValidation1(List<contact> contTriggerNew, List<contact> contTriggerOld,
                                        Map<id, contact> contTriggerNewMap, Map<id, contact> contTriggerOldMap) {
                //prevent to update contact record IF leadSource is PartnerReferral
                for (contact eachCnt : contTriggerNew) {
                    Contact oldContact = contTriggerOldMap.get(eachCnt.id);
                    if (oldContact.LeadSource == 'Partner Referral') {
                        eachCnt.addError('Cannot update \'Partner Referral\' contact.');
                    }
                }
        }
    
    
        public static void contactUpdateValidation2(List<contact> contTriggerNew, List<contact> contTriggerOld,
                                        Map<id, contact> contTriggerNewMap, Map<id, contact> contTriggerOldMap) {
    
            for (Contact eachContact : contTriggerNew) {
                if (eachContact.LeadSource != contTriggerOldMap.get(eachContact.id).LeadSource) {
                    eachContact.LeadSource.addError('CANNOT UPDATE LEADSOURCE!!! PLEASE USER.');
                }
            }
        }
    }


}