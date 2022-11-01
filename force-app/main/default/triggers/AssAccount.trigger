trigger AssAccount on Account (after insert, before update, after update) {
    if(trigger.isAfter &&trigger.isUpdate)
    AssAccountHandler.AccUptadephoneHandler(Trigger.newMap,Trigger.oldMap);

}