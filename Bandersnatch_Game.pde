// VARIABLES
final float BUTTON_HEIGHT = 50; // defines button’s height value
final float BUTTON_WIDTH = 175; // defines button’s width value
final int HAPPINESS_MAX = 100; // defines the maximum happiness value
final float GRADES_MAX = 100; // defines the maximum wealth value
final float WEALTH_MAX = 100; // defines the maximum grades value
int happinessValue = 60; // keeps track of player’s happiness
float wealthValue = 32; // defines the player’s wealth
float gradesValue = 80; // keeps track of player’s grades
int backgroundValue = 0; // current background value on screen
int randomEventValue = 0; // current weekly random event value
int weekNumber = 1; // keeps track of weeks passed
float buttonX; // a button's X value
float buttonY; // a button's Y value
int reusedButton;
// VARIABLES

void setup() {
  size(1000, 750); // sets size of window
  background(0); // TEMPORARY
  noStroke(); // remove outline
} // setup()

void draw() {
  drawHUD(); // draw the stat bars to the screen
  reusedButton(1);
  reusedButton(2);
  reusedButton(3);
  reusedButton(4);
  reusedButton(5);
  fill(255);
  textSize(15);
  text("So I'm thinking we should put information on the area\nyou're in. Say you're in the commons getting food,\nit would display 'UMBC Commons:'\nknown for blah blah blah'", 300, 610);
} // draw()

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// DRAWING UNDER ///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// The following is a reusable function that allows for a button to be made.
// When creating a button, set it up as such: createButton(xposition, yposition);
void createButton(float buttonX, float buttonY) {
  fill(255);
  rect(buttonX, buttonY, BUTTON_WIDTH, BUTTON_HEIGHT);
} // createButtons()

void aesthetics(int backgroundValue) {
  if (backgroundValue == 0) {
    
  }
  else if (backgroundValue == 1) {
    
  }
} // aesthetics()

void drawHUD() {
  fill(150, 0, 150); // purple
  triangle(0, 400, 0, 750, 500, 750); // left side triangle
  rect(0, 550, 1000, 250); // bottom rectangle
  rect(750, 375, 250, 325); // right rectangle
  triangle(750, 375, 775, 350, 775, 375); // right trangle
  rect(775, 350, 225, 25); // top right rectangle (next to trangle)
  drawStats();
}

// This function draws all of the bars on the bottom left to the screen
void drawStats() {
  fill(255); // white
  rect(50, 575, 200, 30); // happiness bar
  rect(50, 625, 200, 30); // wealth bar
  rect(50, 675, 200, 30); // grades bar
  drawHappiness(); // call for happiness to be drawn
  drawWealth(); // call for health to be drawn
  drawGrades(); // call fr grades to be drawn
} // drawStats()

// This function draws the happiness bar and determines if it should be red, yellow or green
void drawHappiness() {
  fill(255); // white text
  textSize(13); // font size
  text("Happiness:", 50, 572); // display happiness above the bar
  textSize(20); // font size for DANGER
  if (happinessValue > 66) {
    fill(0, 255, 0, 150); // GREEN
    rect(50, 575, happinessValue*2, 30); // draw bar
  } // if above 66
  else if (happinessValue > 33) {
    fill(255, 255, 0, 150); // YELLOW
    rect(50, 575, happinessValue*2, 30); // draw bar
  } // if above 33
  else if (happinessValue > 0) {
    fill(255, 0, 0, 150); // RED
    rect(50, 575, happinessValue*2, 30); // draw bar
    fill(255, 0, 0); // RED
    text("DANGER", 150, 597); // display danger text on bar when red
  } // if above 0
  fill(0); // black
  textSize(15); // font size
  text(happinessValue, 51, 595); // display happiness inside bar
} // drawHappiness()

// this function draws the wealth bar and determins if it should be red, yellow or green
void drawWealth() {
  fill(255); // white
  textSize(13); // font size
  text("Money:", 50, 623); // display money above the bar
  textSize(20); // font size for DANGER
  if (wealthValue > 66) {
    fill(0, 255, 0, 150); // GREEN
    rect(50, 625, wealthValue*2, 30); // draw bar
  } // if above 66
  else if (wealthValue > 33) {
    fill(255, 255, 0, 150); // YELLOW
    rect(50, 625, wealthValue*2, 30); // draw bar
  } // if above 33
  else if (wealthValue > 0) {
    fill(255, 0, 0, 150); // RED
    rect(50, 625, wealthValue*2, 30); // draw bar
    fill(255, 0, 0); // RED
    text("DANGER", 150, 647); // display danger text on bar when red
  } // if above 0 
  fill(0); // black
  textSize(15); // font size
  String wealthValueDisplayed = nf(wealthValue, 0, 2); // sets the decimal places for the money value (you wouldn't want $15.6, you'd want $15.62)
  text("$" + wealthValueDisplayed, 51, 645); // display money inside bar
} // drawWealth()

// This function draws the grades bar and determines if it should be red, yellow or green
void drawGrades() {
  fill(255); // white
  textSize(13); // font size
  text("Grades:", 50, 672); // display grades above bar
  textSize(20); // font size
  if (gradesValue > 66) {
    fill(0, 255, 0, 150); // GREEN
    rect(50, 675, gradesValue*2, 30); // draw bar
  } // if above 66
  else if (gradesValue > 33) {
    fill(255, 255, 0, 150); // YELLOW
    rect(50, 675, gradesValue*2, 30); // draw bar
  } // if above 33
  else if (gradesValue > 0) {
    fill(255, 0, 0, 150); // RED
    rect(50, 675, gradesValue*2, 30); // draw bar
    fill(255, 0, 0); // RED
    text("DANGER", 150, 697); // display danger text on bar when red
  } // if above 0
  fill(0); // black
  textSize(15); // font size
  text(gradesValue + "%", 51, 695); // display grades inside bar
} // drawGrades()

void reusedButton(int reusedButton) {
  textSize(25);
  if (reusedButton == 1) {
    createButton(790, 375);
    fill(0);
    text("Go to class", 805, 410);
  } // reusedButton 1
  else if (reusedButton == 2) {
    createButton(790, 450);
    fill(0);
    text("Study", 840, 483);
  } // reusedButton 2
  else if (reusedButton == 3) {
    createButton(790, 525);
    fill(0);
    text("Socialize", 822, 560);
  } // reusedButton 3
  else if (reusedButton == 4) {
    createButton(790, 600);
    fill(0);
    text("Get food", 822, 635);
  } // reusedButton 4
  else if (reusedButton == 5) {
    createButton(790, 675);
    fill(0);
    text("Sleep", 842, 708);
  } // reusedButton 5
} // reusedButton()

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// DRAWING ABOVE ///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// TRACKING UNDER //////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// This keeps track of the weeks and events that take place during them
void weeksNumber(int weekNumber) {
  if (weekNumber == 1) {
    
  }
} // weeksNumber()

// The following function checks for when a stat value exceeds it's maximum. If it does, it sets it back to the maximum.
void statErrorChecking() {
  if (happinessValue > HAPPINESS_MAX) {
    happinessValue = 100; // reset back to 100
  } // if happiness reset
  if (wealthValue > WEALTH_MAX) {
    wealthValue = 100; // reset back to 100
  } // if wealth reset
  if (gradesValue > GRADES_MAX) {
    gradesValue = 100; // reset back to 100
  } // if 
} // statErrorChecking()

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// TRACKING ABOVE //////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// The following function creates an integer for each week between 0 and ###.
// An event is assigned to each number and, if that number is chosen, it prompts the player with options of how to handle it.
void randomEvents(int randomEventValue) {

} // randomEvents() 

// IDEK what the fuck we should use this for
void playerChoice() {
  
} // playerChoice()
