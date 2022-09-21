rm(list=ls()); # cleans out the Environment every time the code is executed
options(show.error.locations = TRUE); # show the line number of errors in the Console
  
weatherData = read.csv(file="data/twoWeekWeatherData.csv", 
                       sep=",",
                       header=TRUE, 
                       stringsAsFactors = FALSE);  

precipitation = weatherData$precipitation
highTemp = weatherData$precipitation
lowTemp = weatherData$lowTemp
date = weatherData$date
noonCondition = weatherData$noonCondition

#A
if(precipitation[1] > 1)
{
  cat("Day 1 had at least 1 inch of rain \n");
  cat("The high temp was", highTemp[1], "\n");
  cat("The low temp was", lowTemp[1], "\n");
}

if(precipitation[2] > 1)
{
  cat("Day 2 had at least 1 inch of rain \n");
  cat("The high temp was", highTemp[2], "\n");
  cat("The low temp was", lowTemp[2], "\n");
}

if(precipitation[3] > 1)
{
  cat("Day 3 had at least 1 inch of rain \n");
  cat("The high temp was", highTemp[3], "\n");
  cat("The low temp was", lowTemp[3], "\n");
}

if(precipitation[4] > 1)
{
  cat("Day 4 had at least 1 inch of rain \n");
  cat("The high temp was", highTemp[4], "\n");
  cat("The low temp was", lowTemp[4], "\n");
}

if(precipitation[5] > 1)
{
  cat("Day 5 had at least 1 inch of rain \n");
  cat("The high temp was", highTemp[5], "\n");
  cat("The low temp was", lowTemp[5], "\n");
}  
  
#B
if(lowTemp[10] < 40)
{
  cat("The low temp was less than 40 degrees on \n", date[10]);
}

if(lowTemp[11] < 40)
{
  cat("The low temp was less than 40 degrees on" , date[11], "\n");
}

if(lowTemp[12] < 40)
{
  cat("The low temp was less than 40 degrees on" , date[12], "\n");
}

if(lowTemp[13] < 40)
{
  cat("The low temp was less than 40 degrees on" , date[13], "\n");
}
  
if(lowTemp[14] < 40)
{
  cat("The low temp was less than 40 degrees on" , date[14], "\n");
}  

#C
randomTemp = sample(40:80, size =1);
#D
weatherCondition = c("Cloudy", "Sunny", "Rainy", "Foggy")
randomWeatherCondition = sample(weatherCondition, size = 1);
#E
if(randomTemp >= 60)
{
  if(randomWeatherCondition == "Sunny")
  {
    cat("It is 60 degrees or more. It is sunny. \n")
  }
}

if(randomTemp < 60)
{
  if(randomWeatherCondition == "Sunny")
  {
    cat("It is less than 60 degrees. It is sunny. \n")
  }
}

if(randomTemp >= 60)
{
  if(randomWeatherCondition != "Sunny")
  {
    cat("It is 60 degrees or more. It is not sunny. \n")
  }
}

if(randomTemp < 60)
{
  if(randomWeatherCondition != "Sunny")
  {
    cat("It is less than 60 degrees. It is not sunny. \n")
  }
}

# 7/10 Comfortable
# Nothing
# Loops, not having to code each individual if statement (You told me loops are coming soon)
