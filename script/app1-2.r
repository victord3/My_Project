{rm(list=ls());
options(show.error.locations = TRUE);

runnerDistanceMeters = 400;

runner1TimeSeconds = 127;
runner2TimeSeconds = 140;

runner1SpeedMetersSeconds = runnerDistanceMeters/runner1TimeSeconds;
runner2SpeedMetersSeconds = runnerDistanceMeters/runner2TimeSeconds;

metersPerMile = 1609 / 1
secondsPerHour = 3600 / 1

runner1DistanceMiles = runnerDistanceMeters/metersPerMile;
runner1TimeHours = runner1TimeSeconds/secondsPerHour;
runner1SpeedMilesHours = runner1DistanceMiles/runner1TimeHours;

runner2DistanceMiles = runnerDistanceMeters/metersPerMile;
runner2TimeHours = runner2TimeSeconds/secondsPerHour;
runner2SpeedMilesHours = runner2DistanceMiles/runner2TimeHours;

#1.) Still feeling comfortable, starting to make me think
#2.) Are there multiple ways to solve this and show the answer? Did I do it correctly/the expected way?
#3.) Is there a way to input a conversion and then call upon that? Or is it better to input 

}