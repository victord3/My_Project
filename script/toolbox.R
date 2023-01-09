# see if the first number is divisible by the second
isDivisible = function(div1, div2)
{
  remainder = div1 %% div2;
  if(remainder == 0)
  {
    return(TRUE);
  } 
  else
  {
    return (FALSE);
  }
}

counter = function(vector, compareVal)
{
  vecLength = length(vector);  # get the length of the vector
  countVal = 0;                # initialize the count to 0
  for(val in 1:vecLength)      # go through each value in vector
  {
    # check if the vector value is greater than the compareVal
    if(vector[val] > compareVal)
    {
      countVal = countVal + 1; # add one to the count
    }
  }
  
  return(countVal);  # return the count value to the caller
}

counter2 = function(vector, compareVal, conditionalOp=">")
{
  vecLength = length(vector);  # get the length of the vector
  countVal = 0;                # initialize the count to 0
  for(val in 1:vecLength)      # go through each value in vector
  {
    if(conditionalOp == ">" & vector[val] > compareVal)
    {
      countVal = countVal + 1; # add one to the count
    }
    else if(conditionalOp == "<" & vector[val] < compareVal)
    {
      countVal = countVal + 1; # add one to the count
    }
    else if(conditionalOp == "==" & vector[val] == compareVal)
    {
      countVal = countVal + 1; # add one to the count
    }
    else if(conditionalOp == ">=" & vector[val] >= compareVal)
    {
      countVal = countVal +1
    }
    else if(conditionalOp == "<=" & vector[val] <= compareVal)
    {
     countVal = countVal + 1 
    }
    else if(conditionalOp == "!=" & vector[val] != compareVal)
    {
      countVal = countVal + 1
    }
  }
    if(countVal == 0)
    {
      return("error")
    }
  return(countVal);    # return the count value to the caller
}


valueComparer = function(vector, compareVal, conditionalOp="<")
{
  trueOrFalse = 0
  vecLength = length(vector);
  for(val in 1:vecLength)
  {
    if(conditionalOp == ">" & vector[val] > compareVal)
    {
      trueOrFalse = trueOrFalse + 1
    }
    else if(conditionalOp == "==" & vector[val] == compareVal)
    {
      trueOrFalse = trueOrFalse + 1
    }
    else if(conditionalOp == "<" & vector[val] < compareVal)
    {
      trueOrFalse = trueOrFalse + 1
    }
  }
  
  if(trueOrFalse > 0)
  {
    return("TRUE")
  }
  else if(trueOrFalse == 0)
  {
    return("FALSE")
  }
}       

meanSquareError = function(vector)
{
  vecLength = length(vector)
  vecTotal = 0
  for(i in 1:vecLength)
  {
    vecTotal = vecTotal + vector[i]
  }
  vecMean = vecTotal / vecLength
  summedData = 0
  for(i in 1:vecLength)
  {
  summedData = (summedData) + (vector[i] - vecMean)^2
  }
  mse = (1/vecLength) * (summedData)
}
