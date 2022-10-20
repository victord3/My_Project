{
  rm(list=ls());  # cleans out the Environment every time the code is executed
  options(show.error.locations = TRUE);  # show the line number of errors in the Console
  
  ### read in data from  twoWeekWeatherData.csv
  weatherData = read.csv(file="data/twoWeekWeatherData3.csv", 
                         sep=",",
                         header=TRUE, 
                         stringsAsFactors = FALSE);  
  
  #1
  precipDesc = sort(weatherData$precipNA, decreasing = TRUE, na.last = TRUE)
  precipAsc = sort(weatherData$precipNA, na.last = NA )
  
  #2
  medianPrecipNA = median(weatherData$precipNA, na.rm = TRUE)
  
  #3
  remainder = function(div1, div2)
  {
    remain = div1 %% div2
    return(remain)
  }
  remainderEx = remainder(50, 9)
  
  #4
  celciusToFahrenheit = function(celc)
  {
    fahr = (9/5)*(celc) + 32
    return(fahr)
  }
  celToFahrEx = celciusToFahrenheit(0)
  
  #5
  percentToLetterGrade = function(percent)
  {
    if(percent > 100)
    {
      return("Error")
    }
    else if(percent >= 90)
    {
      return("A")
    }
    else if(percent >= 80)
    {
      return("B")
    }
    else if(percent >= 70)
    {
      return("C")
    }
    else if(percent >= 60)
    {
      return("D")
    }
    else if(percent >= 50)
    {
      return("E")
    }
    else if(percent >= 0)
    {
      return("F")
    }
    else if(percent < 0)
    {
      return("Error")
    }
  }
  letterGradeEx = percentToLetterGrade(60)
  
  #1. Very comfortable
  #2. Nothing
  #3. Nothing
  
}