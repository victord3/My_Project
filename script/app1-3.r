rm(list=ls());
options(show.error.locations = TRUE);

#Lenths are in Centimeters
fishLengths = c(25, 26, 20, 22, 32)

fish1LengthCentimeters = 25
fish2LengthCentimeters = 26
fish3LengthCentimeters = 20
fish4LengthCentimeters = 22
fish5LengthCentimeters = 32

fishLengthMeanOption1 = mean(fish1LengthCentimeters, fish2LengthCentimeters, fish3LengthCentimeters, fish4LengthCentimeters, fish5LengthCentimeters)
#or
fishLenthMeanOption2 = (fish1LengthCentimeters + fish2LengthCentimeters + fish3LengthCentimeters + fish4LengthCentimeters + fish5LengthCentimeters)/(5)
#or
fishLenthMeanOption3 = mean(fishLengths)

fishLenthsVariance = var(fishLengths)

fishLenthsStandardDeviation = sd(fishLengths)

