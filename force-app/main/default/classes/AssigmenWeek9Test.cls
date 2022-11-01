@isTest
public class AssigmenWeek9Test {
    @isTest
   private static void AssigmenWeek9Test() {
    List<Case> ListC = new List<Case> ();
    for (integer i=0; i<200; i ++){
    Case Cs = New Case ();
    Cs.Subject = '‘Parent Case may contain secret info, do something NOW';
    CS.priority = 'High';
    Cs.Description = 'Test';
    ListC.add(Cs);
    }
    insert ListC;
    List<Case> Cases =  [Select id from Case];
    system.assertEquals(200,cases.size());
    }
}
