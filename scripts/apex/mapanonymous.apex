map<string, string> mapCountryCurrency = new map<string, string>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Lira');
mapCountryCurrency.put('El Salvador', 'Bitcoin');
mapCountryCurrency.put('Canada', 'Dollar');
system.debug(mapCountryCurrency);

string Ind = 'India';
String IndiaCurrency = mapCountryCurrency.get(Ind);
String TurkiyeCurrency = mapCountryCurrency.get('Turkiye');

system.debug('India currency => ' + IndiaCurrency);
system.debug('Turkiye curency => ' + TurkiyeCurrency);


Set<String>allCountries = mapCountryCurrency.keyset();
system.debug('all countries are  ' + allCountries);

List<string> allCurrencies = mapCountryCurrency.values();
system.debug('all curreincies ===> ' + allCurrencies);

Set<String> countrySet = mapCountryCurrency.keySet();
for(string eachKey: countrySet){
 system.debug('each Key ==> ' + eachKey)
 ; 
 string eachCurrency = mapCountryCurrency.get(eachKey);
 system.debug('each currency ===> ' + eachCurrency);
 system.debug('--------');  

}