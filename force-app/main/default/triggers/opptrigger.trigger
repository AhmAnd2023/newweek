trigger opptrigger on Opportunity (after update) {


    map<id, Opportunity> OppOlds = trigger.oldMap;
    
        List<opportunity> newOpp = trigger.new;
        set<id> newOppIds = new set<id>();

        for (Opportunity Opp : trigger.new) {
            system.debug('Old Name ==> ' + OppOlds.get(opp.Id).Name);
            system.debug('New Name===>' + Opp.Name);
            system.debug('Old Amount===>' + OppOlds.get(opp.Id).Amount);
            system.debug('New Amount===>' + Opp.Amount);

        }
        
    }
