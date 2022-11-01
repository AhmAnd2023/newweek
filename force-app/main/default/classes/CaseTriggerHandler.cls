public class CaseTriggerHandler {
    public static void Mahmut(List<Case> Triggernew) {
        for( Case css : Triggernew){
            if(css.Origin == 'Email') {
                css.Status = 'New';
                css.Priority = 'Medium';

            }
        }

    }
}
