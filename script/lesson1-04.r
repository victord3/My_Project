{
  rm(list=ls()); # cleans out the Environment every time the code is executed
  options(show.error.locations = TRUE); # show the line number of errors in the Console
  
  weatherData = read.csv(file="data/twoWeekWeatherData.csv", # path to file
                         sep=",",                   # values are separated by commas
                         header=TRUE,               # there is a header row
                         stringsAsFactors = FALSE); # for people using R 3.X
  
  #Extract from data and turn into a vector
  highTemps = weatherData$highTemp;
  
  #3 Different Ways
  highTempDay7a = highTemps[7];
  highTempDay7b = weatherData$highTemp[7];
  highTempDay7c = weatherData[7, "highTemp"];  # think of this as [X,Y] notation
  
  valComb = highTemps[c(1,5,12)];  # a vector with 3 values
  
  consecVals = highTemps[3:11]; 
  
  consecValsRev = highTemps[11:3];
  
  #GET RANDOM #
  consecVals1 = sample(x = highTemps[1:14], size = 3);
  
  seq1 = seq(from=1, to=14, by=2);
  seq3 = seq(from=1, to=10, by=3);
  
  highTempSeq1 = highTemps[seq1];
  highTempSeq3 = highTemps[seq3];
  
  highTempSeq1b = highTemps[seq(from=1, to=14, by=2)];  
  highTempSeq3b = highTemps[seq(from=1, to=10, by=3)];
  
}