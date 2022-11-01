public class MyCity {
    /*public void cityInformation() {

        String gez=' ispanya ';
        string ulk= 'Barcelona';
        String gezulk = 'Gezmek istediğim ülke ->' + gez + 've şehir ->' + ulk  ;  

        system.debug(gezulk);

    }
*/

    public void stringMethod(){
        string Im = 'I am salesforce Developer';
        Boolean bul = Im.contains('force');
        system.debug('Cümlede foce kelimesi var mı? ' + bul);

        integer say = Im.length();
        system.debug('Cümlede ' + say + ' tane karakter var' );

        string byk =Im.toUpperCase();
        system.debug('Büyül harf ile yazımı: ' + byk);



    }

    public void dateMethod() {
        date bgntrh = date.today();
        System.debug('tarih: ' + bgntrh);

        Datetime ts =Datetime.now();
        System.debug('trh ve zaman ' + ts);

        Datetime ileri50 = ts.addHours(50);
        System.debug('50 saat sonrası' + ileri50);





    }

    public void cityInformation() {

      date Tr = date.newInstance(1923,10,29);

        system.debug(Tr);

        Time gd = time.newInstance(16, 20, 50,22);
        System.debug(gd);

        Date gr = bgntrh.addMonths(-26);
        System.debug(gr);

    }

    
}
