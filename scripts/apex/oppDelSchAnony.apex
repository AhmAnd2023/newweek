OppDelSchedul ac = new OppDelSchedul();

String cronExp = '0 0 15 1/1 * ? *';
system.schedule('opportunitydatejob', cronExp, ac);