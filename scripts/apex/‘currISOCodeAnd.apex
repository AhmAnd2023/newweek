map<string, decimal> currISOCodeAndExchangeRateMap = new map<string, decimal>();
currISOCodeAndExchangeRateMap.put('AUD ', 0.73);
currISOCodeAndExchangeRateMap.put('CAD ', 0.78);
currISOCodeAndExchangeRateMap.put('EUR ', 1.13);
currISOCodeAndExchangeRateMap.put('NZD ', 0.68);
currISOCodeAndExchangeRateMap.put('INR ', 0.013);
system.debug(currISOCodeAndExchangeRateMap);


system.debug(currISOCodeAndExchangeRateMap.containsKey('AUD'));


// Boolean EURcurrency =currISOCodeAndExchangeRateMap.containsKey('AUD ')
// system.debug(EURcurrency);

Set<String> BigSet = new set<String>();
Set<String> SmallSet = new set<String>();
for (String eachset : currISOCodeAndExchangeRateMap.keySet()){
    if (currISOCodeAndExchangeRateMap.get(eachset)>=1){
        BigSet.add(eachset);
      
    }
    else {
        SmallSet.add(eachset);
 
    }
   
   
}

system.debug(SmallSet);
system.debug(BigSet);
