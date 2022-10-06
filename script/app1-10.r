{
  rm(list=ls()); # cleans out the Environment every time the code is executed
  options(show.error.locations = TRUE); # show the line number of errors in the Console
  
  #1 The highest temp will stay at 0 because none of the negative values will replace it
  
  weatherData = read.csv(file="data/LansingNOAA2016.csv", 
                         sep=",",
                         header=TRUE, 
                         stringsAsFactors = FALSE);  
  
  highTemps = weatherData$maxTemp;
  precip = weatherData$precip;
  lowTemps = weatherData$minTemp;
  
  numDays  = nrow(weatherData);
  
  #2 
  #Any of the days high temps were lower than 40? or Lower than 40 overall?
  evenDayLT40 = FALSE
  
  for(i in seq(from = 2, to = numDays, by = 2))
  {
    if(highTemps[i] < 40)
    {
      evenDayLT40 = TRUE;
    }
  }
  
  #3
  lowTempSum = 0
  meanLowTemp = lowTempSum / numDays
  
  for(i in 1:numDays)
  {
    lowTempSum = lowTempSum + lowTemps[i]
    meanLowTemp = lowTempSum / numDays
  }
  
  #4 
  moreThan1 = 0
  between0.1And1 = 0
  lessThan0.1 = 0
  
  for(i in 1:numDays)
  {
    if(precip[i] > 1)
    {
      moreThan1 = moreThan1 + 1
    }
    else if(precip[i] > 0.1)
    {
      between0.1And1 = between0.1And1 + 1
    }
    else if(precip[i] < 0.1)
    {
      lessThan0.1 = lessThan0.1 + 1
    }
  }
   
  #5
  lowestTemp = lowTemps[1]
  for(i in 1:numDays)
  {
    if(lowTemps[i] < lowestTemp)
    {
      lowestTemp = lowTemps[i]
      cat(weatherData$date[i],"had the lowest temp of", lowTemps[i], "\n")
      # How would I only print the overall lowest?
    }
    
  }
  
  #6    
  #Completed
  
  
  #1 This one was definitely more challenging because everything I have learned up to
  #now is being used. It is a good challenge.
  #2 Just on Q#5: How would I only print the lowest overall and not each time it 
  #reaches a lowest?
  #3 Nothing other than ^
  
     
} 