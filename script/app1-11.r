{
  rm(list=ls());  # cleans out the Environment every time the code is executed
  options(show.error.locations = TRUE);  # show the line number of errors in the Console
  
  weatherData = read.csv(file="data/twoWeekWeatherData2.csv", 
                         sep=",",
                         header=TRUE, 
                         stringsAsFactors = FALSE);  
  
  numDays  = nrow(weatherData); 
  
  highTemps = weatherData$highTemp;
  noonCond = weatherData$noonCondition;
  lowTemps = weatherData$lowTemp
  date = weatherData$date
  precip = weatherData$precipitation
  noonCondMessy = weatherData$noonCondMessy
  precipBad = weatherData$precipBad
  
 #A 
  sunnyDaysGT54 = 0
  nonSunnyDaysLTOET54 = 0
  sunnyDaysLTOET54 = 0
  nonSunnyDaysGT54 = 0
  
  for(i in 1:numDays)
  {
    if(noonCond[i] == "Sunny" && highTemps[i] > 54)
    {
      sunnyDaysGT54 = sunnyDaysGT54 +1
    }
    else if(noonCond[i] != "Sunny" && highTemps[i] <= 54)
    {
      nonSunnyDaysLTOET54 = nonSunnyDaysLTOET54 +1
    }
    else if(noonCond[i] == "Sunny" && highTemps[i] <= 54)
    {
      sunnyDaysLTOET54 = sunnyDaysLTOET54 +1
    }
    else if(noonCond[i] != "Sunny" && highTemps[i] > 54)
    {
      nonSunnyDaysGT54 = nonSunnyDaysGT54 +1
    }
  }
  
  #B
  cloudyDays = 0
  
  for(i in 1:numDays)
  {
    if(noonCondMessy[i] == "clouds" || noonCondMessy[i] == "Cloudy" || noonCondMessy[i] == "cloudy")
    {
      cloudyDays = cloudyDays + 1
    }
  }
  
  #C
  badWeatherDay = 0
  
  for(i in 1:numDays)
  {
    if(noonCond[i] == "Rain" || noonCond[i] == "Cloudy" || noonCond[i] == "Snow")
    {
      badWeatherDay = badWeatherDay + 1
    }
  }
  
  #D
  sunnyWarmDay = 0
  for(i in 1:numDays)
  {
    if(lowTemps[i] > 40 && highTemps[i] > 60 && noonCond[i] == "Sunny")
    {
      sunnyWarmDay = sunnyWarmDay + 1
      print(date[i])
    }
  }
  
  #E
  randomTemp = sample(0:100, size=1);
  
  if(randomTemp < 20 || randomTemp > 80)
  {
    print("error")
  }
  else if(randomTemp >= 20 && randomTemp < 30)
  {
    print("very cold")
  }
  else if(randomTemp >= 30 && randomTemp < 45)
  {
    print("cold")
  }
  else if(randomTemp >= 45 && randomTemp < 60)
  {
    print("nice")
  }
  else if(randomTemp >= 60 && randomTemp <80)
  {
    print("unusually warm")
  }
  
  
  #1. Felt very comfortable with these concepts
  #2. Nothing
  #3. Nothing
  
}
  
 