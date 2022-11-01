trigger Ass9Future on Opportunity (after insert, after update, after undelete, after delete) {
    set<id> AccIds = new Set<Id>();
        
    if(trigger.isAfter){
        if(trigger.isInsert && trigger.isUndelete){
            for( opportunity opp : trigger.new){
                if( opp.accountId != null) {
                    AccIds.add(opp.accountId);

                    }
            }

        }
        if(trigger.isDelete ){
            for( opportunity opp : trigger.old ){
                AccIds.add(opp.accountId);


            }

        }

        if(trigger.isUpdate){
            for( opportunity oppnew : trigger.new){
                opportunity opp = trigger.oldMap.get(oppnew.Id);
                AccIds.add(oppnew.accountId);
                AccIds.add(opp.accountId);
            }
        }
        week9OppUpdatehandler.oppupdatefuture(AccIds);

    }

}