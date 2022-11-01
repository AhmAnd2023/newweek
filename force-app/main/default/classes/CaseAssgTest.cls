@isTest
public class CaseAssgTest{
@isTest
public static void caTestMethod(){
    list<Case> ccc = new list<case> ();
    for( integer i=0; i<200; i++){
    Case t = new Case(); 
    t.status = 'New' ;
    t.origin = 'Phone' ;

    ccc.add(t);
    //  t.status = 'In Progress';
    //  t.subject = system.label.subject;
    //  t.ActivityDate = Date.Today().addDays(2);
    //  t.Description= system.label.comment;
    //  t.WhatId = c.Id;
    //  t.OwnerId= c.OwnerId;   
    }
    insert ccc;
test.startTest();
CasesAssg cc = new CasesAssg();
Database.ExecuteBatch(cc,200);
test.stopTest();

}
}

