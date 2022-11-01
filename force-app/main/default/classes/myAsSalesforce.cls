public class myAsSalesforce {
    public void myFirstCode() {
       /* system.debug('Izmir');
        system.debug('JJohn Wick');
        system.debug('Summer');


    }

    public void myFavorites(){
        integer favNum = 77 ;
        system.debug(favNum);


        string city = 'Ank' ;
        system.debug(city);

        system.debug('Favori Numaram:=> ' + favNum + ' ve Favori şehrim:=> '  + city);
        */


        List<Opportunity> listeOpp = new List<Opportunity> ();

        for(Integer i=0; i<=149;i++) {
            Opportunity Opp149 = new Opportunity ();
            Opp149.Name='Homework' + i;
            Opp149.Type='New Customer';
            Opp149.StageName='Qualification';
            Opp149.CloseDate= date.NewInstance(2024,02,02);
            Opp149.Description='asdff';

        listeOpp.add(Opp149);
            
        }
        insert listeOpp;
        


    }
}
