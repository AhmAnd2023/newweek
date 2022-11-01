List<account> accs = [select id, name from account];
AccountQueueableExample aq = new AccountQueueableExample(accs);
Id jobId = System.enqueueJob(aq);
System.debug(jobId);
