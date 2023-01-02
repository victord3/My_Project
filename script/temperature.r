tempCategory = function(tempValue)
{
  if(tempValue >= 1 & tempValue <= 20)
  {
    return("freezing");
  }
  else if(tempValue >= 21 & tempValue <= 40)
  {
    return("cold");
  }
  else if(tempValue >= 41 & tempValue <= 60)
  {
    return("moderate");
  }
  else if(tempValue >= 61 & tempValue <= 80)
  {
    return("warm");
  }
  else if(tempValue >= 81 & tempValue <= 100)
  {
    return("hot");
  }
}


tempCategory2 = function(tempValue, unit="F")
{
  if(unit == "C")  # if the unit is Celsius
  {
    # Convert tempValue to Fahrenheit
    tempValue = (9/5)*tempValue + 32;
  }
  # note: the if statement above is completely independent from the
  #       if-else-if structure below
  if(tempValue >= 1 & tempValue <= 20)
  {
    return("freezing");
  }
  else if(tempValue >= 21 & tempValue <= 40)
  {
    return("cold");
  }
  else if(tempValue >= 41 & tempValue <= 60)
  {
    return("moderate");
  }
  else if(tempValue >= 61 & tempValue <= 80)
  {
    return("warm");
  }
  else if(tempValue >= 81 & tempValue <= 100)
  {
    return("hot");
  }
}


tempCategory3 = function(tempValue, isFahr=TRUE)
{
  # Do not put TRUE and FALSE in quotes. They are variables in R -- not strings.
  if(isFahr == FALSE)  # the tempValue is Celsius
  {
    # convert tempValue to Fahrenheit
    tempValue = (9/5)*tempValue + 32;
  }
  
  if(tempValue >= 1 & tempValue <= 20)
  {
    return("freezing");
  }
  else if(tempValue >= 21 & tempValue <= 40)
  {
    return("cold");
  }
  else if(tempValue >= 41 & tempValue <= 60)
  {
    return("moderate");
  }
  else if(tempValue >= 61 & tempValue <= 80)
  {
    return("warm");
  }
  else if(tempValue >= 81 & tempValue <= 100)
  {
    return("hot");
  }
}

tempCategory4 = function(tempValue, unit="F")
{
  if(unit == "C")
  {
    tempValue = (9/5)*tempValue + 32;
  }
  else if(unit == "K")
  {
    tempValue = tempValue - 273;      # convert K to C
    tempValue = (9/5)*tempValue + 32; # convert C to F
  }
  
  if(tempValue >= 1 & tempValue <= 20)
  {
    return("freezing");
  }
  else if(tempValue >= 21 & tempValue <= 40)
  {
    return("cold");
  }
  else if(tempValue >= 41 & tempValue <= 60)
  {
    return("moderate");
  }
  else if(tempValue >= 61 & tempValue <= 80)
  {
    return("warm");
  }
  else if(tempValue >= 81 & tempValue <= 100)
  {
    return("hot");
  }
}


#2
tempCategory5 = function(tempVector, unit="F")
{
  # This part stays the same
  if(unit == "C") 
  {
    tempVector = (9/5)*tempVector + 32;
  }
  else if(unit == "K")
  {
    tempValue = tempValue - 273;      # convert K to C
    tempValue = (9/5)*tempValue + 32; # convert C to F
  }
  
  # step 1: create a return vector
  retVector = c();   # c() means this is a vector
  
  # go through each value in tempVector
  for(i in 1:length(tempVector))
  {
    if(tempVector[i] <= 0)
    {
      retVector[i] = "ERROR - TOO COLD";  
    }
    else if(tempVector[i] > 0 & tempVector[i] <= 20)
    {
      # step 2: populate the return value inside the for loop
      retVector[i] = "freezing";  
    }
    else if(tempVector[i] > 20 & tempVector[i] <= 40)
    {
      retVector[i] = "cold";  
    }
    else if(tempVector[i] > 40 & tempVector[i] <= 60)
    {
      retVector[i] = "moderate";  
    }
    else if(tempVector[i] > 60 & tempVector[i] <= 80)
    {
      retVector[i] = "warm";  
    }
    else if(tempVector[i] > 80 & tempVector[i] <= 100)
    {
      retVector[i] = "hot";  
    }
    else if(tempVector[i] > 100)
    {
      retVector[i] = "ERROR - TOO HOT";  
    }
  }
  # step 3: return the populated vector to the caller:
  return(retVector);
}


#3
tempConvertFC = function(vectorVal, isFar = TRUE)
{
  if (isFar == TRUE)
  {
    vectorVal = (5/9)* vectorVal - 32
  }
  else if(isFar == FALSE)
  {
    vectorVal = (9/5)* vectorVal + 32
  }
  return(vectorVal)
}

#4
multiTempUnitConvert = function(vectorVal, fromUnit, toUnit)
{
  if(fromUnit == "F" & toUnit == "C")
     {
        vectorVal = (5/9)* vectorVal - 32
     }
  else if(fromUnit == "C" & toUnit == "F")
    {
        vectorVal = (9/5)* vectorVal + 32
    }
  else if(fromUnit == "F" & toUnit == "K")
    {
       vectorVal = (5/9)* vectorVal - 32
       vectorVal = vectorVal + 273
    }
  else if(fromUnit == "C" & toUnit == "K")
    {
         vectorVal = vectorVal + 273
    }
  else if(fromUnit == "K" & toUnit == "C")
    {
      vectorVal = vectorVal - 273          
    }
  else if(fromUnit == "K" & toUnit == "F")
    {
      vectorVal = vectorVal - 273 
      vectorVal = (9/5)* vectorVal + 32
    }
  return(vectorVal)
}

#5
differenceInTemperatures = function(vectorVals)
{
  returnVector = c()
 for (i in 1:length(vectorVals)) 
  {
   returnVector[i] = (-vectorVals[i-1]) + (vectorVals[i])
  } 
  return(returnVector)
}
                             
                                