{
  rm(list=ls()); # cleans out the Environment every time the code is executed
  options(show.error.locations = TRUE); # show the line number of errors in the Console
  
  #A
  grade = sample(c("A", "B", "C", "D", "E", "F"), size=1); 
  
  if(grade == "A")
  {
    cat("90-100\n")
  }
  else if(grade == "B")
  {
    cat("80-90\n")
  }
  else if(grade == "C")
  {
    cat("70-80\n")
  }
  else if(grade == "D")
  {
    cat("60-70\n")
  }
  else if(grade == "E")
  {
    cat("50-60\n")
  }
  else
  {
    cat("Error \n")
  }
 
  #B
  temperature = sample(-30:120, size=1);
  
  if(temperature > -20 & temperature < 30)
  {
    cat("cold\n")
  }
  else if(temperature == 30)
  {
    cat("cold-ish\n")
  }
  else if(temperature > 30 & temperature < 60)
  {
    cat("warm\n")
  }
  else if(temperature == 60)
  {
    cat("warm-ish\n")
  }
  else if(temperature > 60 & temperature < 100)
  {
    cat("hot\n")
  }
  else
  {
    cat("invalid value\n")
  }
  # Can I just have "invalid value" (<-20 and >100) as an else statement instead?
  
  #C
  #C
  randomTemp = sample(40:80, size =1);
  #D
  weatherData = read.csv(file="data/twoWeekWeatherData.csv", 
                         sep=",",
                         header=TRUE, 
                         stringsAsFactors = FALSE);
  
  noonCondition = weatherData$noonCondition
  
  weatherCondition = c("Cloudy", "Sunny", "Rainy", "Foggy")
  
  randomWeatherCondition = sample(weatherCondition , size = 1);
  #E
  if(randomTemp >= 60)
  {
    cat("It is 60 degrees or more.\n")
  }
  else
  {
    cat("It is less than 60 degrees.\n")
  }
  
  if(randomWeatherCondition == "sunny")
  {
    cat("It is sunny.\n")
  }
  else
  {
    cat("It is not sunny.\n")
  }

  # Comfort level 7/10
  # None
  # What is the suggested way to do part C?
  
  
  
} 