{
  rm(list=ls());  # cleans out the Environment every time the code is executed
  options(show.error.locations = TRUE);  # show the line number of errors in the Console
  
  #1.If the state variable was in the loop, then it would get caught in the loop. 
  #It would continuously set the state variable back to what it was originally. 
  
  #2
  for(i in 1:10)
  {
    cat(i ^2, i ^3, i ^(1/3), "\n")
  }
  #3
  weatherData = read.csv(file="data/twoWeekWeatherData.csv", 
                         sep=",",
                         header=TRUE, 
                         stringsAsFactors = FALSE);  
  
  highTemps = weatherData$highTemp;
  noonCond = weatherData$noonCondition;
  precipitation = weatherData$precipitation
  
  numDays = length(highTemps)
  
  daysUnder50 = 0
  
  for(days in 1:numDays)
  {
    if(highTemps[days] < 50)
    {
      daysUnder50 = daysUnder50 + 1
    }
  }
  #4
  evenCloudyDays = 0
  last8CloudyDays = 0
  evenDays = seq(from=2, to=14, by=2)
  last8Days = 7:14
  
  for(i in seq(from=2, to=14, by=2))
  {
    if(noonCond[i] == "Cloudy")
    {
      evenCloudyDays = evenCloudyDays + 1
    }
  }
  cat("There was", evenCloudyDays, "cloudy day/s on even days. \n")
  
  for(last8 in 7:numDays)
  {
    if(noonCond[last8] == "Cloudy")
    {
      last8CloudyDays = last8CloudyDays + 1
    }
  }
  
  cat("There was",last8CloudyDays, "cloudy day/s in the last 8 days. \n")
  #5
  totalPrec=0
  
  for(days in 1:numDays)
  {
   totalPrec= totalPrec + precipitation[days]
  }
  cat("The total precipitation was",totalPrec,".\n")
}

#1 This was definitely the most challenging so far
#2 What did you mean by "(by index -- not by day)" in Q#4, was I suppose to do it
# different or have them both run in the same for loop?
#3 Nothing yet, would like to make sure I get this down first
