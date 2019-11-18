// This keeps track of the weeks and events that take place during them
void weeksNumber() { // ((UNFINISHED))
  if (weekNumber == -1) {
  titleScreen(); // show the title screen
  } // if weeknumber is default
  if (weekNumber == 0) {
    chooseTraits(); // 
  } // if weeknumber is 0
  if (weekNumber == 1) {
    homeScreen(true); // draw the stat bars to the screen
    reusedButton(1);
    reusedButton(2);
    reusedButton(3);
    reusedButton(4);
    reusedButton(5);
    fill(255); // white
    textSize(15); // font size
    text("So I'm thinking we should put information on the area\nyou're in. Say you're in the commons getting food,\nit would display 'UMBC Commons:'\nknown for blah blah blah' -Drew", 300, 610);
  } // if weeknumber is 1
  if (weekNumber == 2) {
    homeScreen(true);
  } // if weeknumber is 2
} // weeksNumber())
