

// IMAGINE WE HAVE A REALLY POORLY DONE FINAL BOSS AND ITS PROF B LMAOOOO

void setup() {
  size(1000, 750); // sets size of window
  background(0); // TEMPORARY
  noStroke(); // remove outline
  frameRate(7.5);
  statErrorChecking(); // allow for player values to be error checked
} // setup()

void draw() {
  weeksNumber(); // this progresses the game
} // draw()

// The following function checks for when a stat value exceeds it's maximum. If it does, it sets it back to the maximum.
void statErrorChecking() { // ((FINISHED))
  if (happinessValue > HAPPINESS_MAX) {
    happinessValue = 100; // reset back to 100
  } // if happiness reset past max
  else if (happinessValue < HAPPINESS_MIN) {
    happinessValue = 0; // reset back to 0
  } // if happiness reset past min
  if (wealthValue > WEALTH_MAX) {
    wealthValue = 100; // reset back to 100
  } // if wealth reset past max
  else if (wealthValue < WEALTH_MIN) {
    wealthValue = -50; // reset back to 0
  } // if wealth reset past min
  if (gradesValue > GRADES_MAX) {
    gradesValue = 100; // reset back to 100
  } // if grades reset past min
  else if (gradesValue < GRADES_MIN) {
    gradesValue = 0; // reset back to 0
  } // if happiness reset past min
  if (activityPoints <= 0) {
    activityPoints = 20; // reset activity points back to 20
    weekNumber += 1; // add 1 to the week
  } // activityPoints checking and week increase
} // statErrorChecking()
