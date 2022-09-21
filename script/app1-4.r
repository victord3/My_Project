{

  rm(list=ls()); # cleans out the Environment every time the code is executed
  options(show.error.locations = TRUE); # show the line number of errors in the Console
  
  weatherData = read.csv(file="data/twoWeekWeatherData.csv", # path to file
                         sep=",",                   # values are separated by commas
                         header=TRUE,               # there is a header row
                         stringsAsFactors = FALSE); # for people using R 3.X

  #A)
  appSeq = seq(from=13, to=-7, by=-4);
  #C)
  #1.
  precipitation = weatherData$precipitation;
  lowTemps = weatherData$lowTemp;
  #2.
  precipitation4a=precipitation[4];
  precipitation4b=weatherData$precipitation[4];
  precipitation4c=weatherData[4, "precipitation"];
  #3.
  lowTempsValues = lowTemps[c(1,5,9,12)];
  #4.
  precipitationLast5 = precipitation[14:10];
  #5.
  lowTemp12To6 = lowTemps[12:6];
  #6.
  precipitationFirst3Last3 = c(precipitation[1:3],precipitation[14:12]);
  #D)
  precipitationCm = precipitation[1:14] * 2.54;
  
  #E)
  dowJonesData = read.csv(file="data/DowJones1980_2012.csv",
                         sep=" ",                   
                         header=FALSE,               
                         stringsAsFactors = FALSE); 
  
  plot(dowJonesData$V2);
  
  #What was your level of comfort with the lesson/application?
  # Was definitely more challenging but in a good way
  #What areas of the lesson/application confused or still confuses you?
  #Nothing
  #What are some things you would like to know more about that is related to, but not covered in, this lesson?
  #Nothing I can think of
  
}

