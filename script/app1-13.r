{
  rm(list=ls());  # cleans out the Environment every time the code is executed
  options(show.error.locations = TRUE);  # show the line number of errors in the Console
  
  #1.
  weatherData = read.csv(file="data/twoWeekWeatherData3.csv", 
                         sep=",",
                         header=TRUE, 
                         stringsAsFactors = FALSE);  
  source(file="script/toolbox.r");
  
  #2.
  test1 = counter2(weatherData$highTemp, 50, ">=")
  test2 = counter2(weatherData$highTemp, 50, "<=")
  test3 = counter2(weatherData$highTemp, 50, "!=")
  
  #3.
  testError = counter2(weatherData$highTemp, 32, "")
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}

