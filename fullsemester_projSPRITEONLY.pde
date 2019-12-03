
///////////////////////


// FIXED!! Sprites now show up when certain variables are reached!
// no randomizer in this one.
// takes a second to load? Idk whats up with that


///////////////////////





// VARIABLES
final float BUTTON_HEIGHT = 50; // defines button’s height value
final float BUTTON_WIDTH = 175; // defines button’s width value
final int HAPPINESS_MAX = 100; // defines the maximum happiness value
final float GRADES_MAX = 100; // defines the maximum wealth value
final float WEALTH_MAX = 100; // defines the maximum grades value
final int HAPPINESS_MIN = 0; // defines the minimum happiness value
final float GRADES_MIN = 0; // defines the minimum grades value
final float WEALTH_MIN = -50; // defines the minimum wealth value (debt)
int happinessValue = 0; // keeps track of player’s happiness
float wealthValue = 0; // defines the player’s wealth
float gradesValue = 0; // keeps track of player’s grades
int backgroundValue = 0; // current background value on screen
float randNum = int(random(0, 10));
; // weekly random event generator
int weekNumber = -1; // keeps track of weeks passed
float buttonX; // a button's X value
float buttonY; // a button's Y value
int reusedButton; // a value assigned to a button that is reused over and over
int characterPersonality; // 0 means introverted, 1 means extroverted
int difficultyLevel; // 1 for easy, 2 for medium and 3 for hard
boolean homeScreen = false; // if set to true, show the normal hud
String titleNouns[] = {"WORD1", "WORD2", "WORD3", "WORD4", "...", "Noun"}; // these Strings cycle through the title screen
float titleNounsYPos = 300; // sets the position of the words that are cycled throough on title screen
int titleNounArrayValue = 0; // used to as the index of the array for the title screen
PImage introvertnormal; // introvert normal sprite
PImage introvertlowhealth; // introvert low health sprite
PImage introvertrich; // introvert high wealth sprite
PImage extrovertnormal; // extrovert normal sprite
PImage extrovertlowhealth; //extrovert low health sprite
PImage extrovertrich; // extrovert high wealth sprite
PImage librarybg;// Library background
// VARIABLES

// IMAGINE WE HAVE A REALLY POORLY DONE FINAL BOSS AND ITS PROF B LMAOOOO

void setup() {
  size(1000, 750); // sets size of window
  background(0); // TEMPORARY
  noStroke(); // remove outline
  introvertnormal = loadImage("SpriteIntrovert1.png");
  introvertrich = loadImage("introrich.png");
  introvertlowhealth = loadImage("introlowhealth.png");
  extrovertnormal = loadImage ("extronormal.png");
  extrovertlowhealth = loadImage ("extrolowhealth.png");
  extrovertrich = loadImage ("extrorich.png");

  librarybg = loadImage("BG.jpg"); //loading all images in setup for baster bootup. Still lags on startup though???
  statErrorChecking(); // allow for player values to be error checked
} // setup()

void draw() {
  weeksNumber(); 
  randomEvents(randNum);//
} // draw()

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// DRAWING UNDER ///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// The following is a reusable function that allows for a button to be made.
// When creating a button, set it up as such: createButton(xposition, yposition);
void createButton(float buttonX, float buttonY) { // ((FINISHED))
  fill(255);
  rect(buttonX, buttonY, BUTTON_WIDTH, BUTTON_HEIGHT);
} // createButtons()

void aesthetics(int backgroundValue) { // ((UNFINISHED))
  if (backgroundValue == 0) {
  } else if (backgroundValue == 1) {
  }
} // aesthetics()

// this draws the black hud and stat values.
void drawHUD() { // ((UNFINISHED))
  background(0);
  image(librarybg, 0, 0, librarybg.width/3.5, librarybg.height/3.5); // library background

  if (characterPersonality == 0) {
    image(introvertnormal, -30, 40, introvertnormal.width/3.5, introvertnormal.height/3.5);
  } // if class is introvert, open with introvertnormal sprite

  if ((characterPersonality == 0)&&(wealthValue >= 100)) {
    image(librarybg, 0, 0, librarybg.width/3.5, librarybg.height/3.5);
    image(introvertrich, -30, 40, introvertrich.width/3.5, introvertrich.height/3.5);
  } // if class is introvert and high wealth ($90), show high wealth introvert sprite

  if ((characterPersonality == 0)&&(happinessValue <= 50)) {
    image(librarybg, 0, 0, librarybg.width/3.5, librarybg.height/3.5);
    image(introvertlowhealth, 10, 50, introvertlowhealth.width/4, introvertlowhealth.height/4);
  } // if class is introvert and low health (50%), show low health introvert sprite





  if (characterPersonality == 1) {
    image(extrovertnormal, -10, 80, extrovertnormal.width/4, extrovertnormal.height/4);
  } // if class is extrovert, open with extrovertnormal sprite

  if ((characterPersonality == 1)&&(wealthValue >= 100)) {
    image(librarybg, 0, 0, librarybg.width/3.5, librarybg.height/3.5);
    image(extrovertrich, -10, 80, extrovertrich.width/4, extrovertrich.height/4);
  } // if class is extrovert and high wealth ($90), show high wealth extrovert sprite

  if ((characterPersonality == 1)&&(happinessValue <= 30)) {
    image(librarybg, 0, 0, librarybg.width/3.5, librarybg.height/3.5);
    image(extrovertlowhealth, 90, 100, extrovertlowhealth.width/4.5, extrovertlowhealth.height/4.5);
  } // if class is extrovert and low health (50%), show low health extrovert sprite




  fill(50); // gray
  triangle(0, 400, 0, 750, 500, 750); // left side triangle
  rect(0, 550, 1000, 250); // bottom rectangle
  rect(750, 375, 250, 325); // right rectangle
  triangle(750, 375, 775, 350, 775, 375); // right trangle
  rect(775, 350, 225, 25); // top right rectangle (next to trangle)
  drawStats(); // draw the stat meter in the bottom left
} // drawHUD

// This function draws all of the bars on the bottom left to the screen
void drawStats() { // ((FINISHED))
  fill(255); // white
  rect(50, 575, 200, 30); // happiness bar
  rect(50, 625, 200, 30); // wealth bar
  rect(50, 675, 200, 30); // grades bar
  if (difficultyLevel == 1) {
    fill(0, 255, 100); // green
    textSize(40); // font size
    rotate(radians(35)); // rotate text to fit the triangle on the left
    text("EASY", 320, 360); // show easy text
    rotate(radians(-35)); // set all text back to original position
    happinessValue = 80; // start with 80 happiness
    wealthValue = 75; // start with $75
    gradesValue = 100; // start with 100% in grades
  } // if easy
  else if (difficultyLevel == 2) {
    fill(255, 255, 0); // yellow
    textSize(40); // font size
    rotate(radians(35)); // rotate text to fit the triangle on the left
    text("MEDIUM", 295, 360); // show medium text
    rotate(radians(-35)); // set all text back to original position
    happinessValue = 50; // start with 50 happiness
    wealthValue = 20; // start with $20
    gradesValue = 100; // start with 100% in grades
  } // if medium
  else if (difficultyLevel == 3) {
    fill(255, 0, 0); // red
    textSize(40); // font size
    rotate(radians(35)); // rotate text to fit the triangle on the left
    text("HARD", 320, 360); // show hard text
    rotate(radians(-35)); // set all text back to original position
    happinessValue = 30; // start with 30 happiness (CrIpPlInG dEpReSsIoN)
    wealthValue = -10; // start with $-10
    gradesValue = 100; // start with 100% in grades
  } // if hard
  fill(255);
  if (characterPersonality == 0) {
    textSize(13); // font size
    text("You are introverted.\nYou do better alone and with low activity.", 50, 725); // show introverted text under the stat bars
  } // if introvert
  else if (characterPersonality == 1) {
    textSize(13); // font size
    text("You are extroverted.\nYou do better with others and with high activity.", 50, 725); // show extroverted text under the stat bars
  } // if extrovert
  drawHappiness(); // call for happiness to be drawn
  drawWealth(); // call for health to be drawn
  drawGrades(); // call fr grades to be drawn
} // drawStats()

// This function draws the happiness bar and determines if it should be red, yellow or green
void drawHappiness() { // ((FINISHED))
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
void drawWealth() { // ((FINISHED))
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
void drawGrades() { // ((FINISHED))
  fill(255); // white
  textSize(13); // font size
  text("Grades:", 50, 672); // display grades above bar
  textSize(20); // font size
  if (gradesValue > 79) {
    fill(0, 255, 0, 150); // GREEN
    rect(50, 675, gradesValue*2, 30); // draw bar
  } // if above 66
  else if (gradesValue > 59) {
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

// These buttons will be reused often on the HUD. 
void reusedButton(int reusedButton) { // ((UNFINISHED))
  textSize(25); // font size
  if (reusedButton == 1) {
    createButton(790, 375); // button preset
    fill(0); // black text
    text("Go to class", 805, 410); // class text
  } // reusedButton 1
  else if (reusedButton == 2) {
    createButton(790, 450); // button preset
    fill(0); // black
    text("Study", 840, 483); // study text
  } // reusedButton 2
  else if (reusedButton == 3) {
    createButton(790, 525); // button preset
    fill(0); // black
    text("Socialize", 822, 560); // socialize text
  } // reusedButton 3
  else if (reusedButton == 4) {
    createButton(790, 600); // button preset
    fill(0); // black
    text("Get food", 822, 635); // food text
  } // reusedButton 4
  else if (reusedButton == 5) {
    createButton(790, 675); // button preset
    fill(0); // black
    text("Sleep", 842, 708); // sleep text
  } // reusedButton 5
} // reusedButton()

// This presents the title screen to the user as the very first screen in the game. 
void titleScreen() { // ((FINISHED))
  background(0); // black
  moveNouns();
  fill(0);
  rect(350, 250, 400, 200);
  rect(250, 0, 400, 100);
  textSize(50); // font size
  fill(255); // white
  textAlign(CENTER);
  text("Crippling [               ] Simulator", 500, 200); // set title text
  textAlign(LEFT);
  createButton(165, 450); // EASY button
  createButton(415, 450); // MEDIUM button
  createButton(665, 450); // HARD button
  textSize(30); // font size
  fill(255); // white
  text("Select your difficulty:", 350, 420); // difficulty text
  fill(0); // black
  text("EASY", 215, 485); // easy text
  text("MEDIUM", 443, 485); // medium text
  text("HARD", 710, 485); // hard text
  if ((mousePressed == true) && (mouseX >= 165 && mouseX <= 340) && (mouseY >= 450 && mouseY <= 500)) {
    difficultyLevel = 1; // set difficulty to easy
    weekNumber += 1; // increase week number
  } // if clicked in easy button, set difficulty to 1
  if ((mousePressed == true) && (mouseX >= 415 && mouseX <= 590) && (mouseY >= 450 && mouseY <= 500)) {
    difficultyLevel = 2; // set difficulty to medium
    weekNumber += 1; // increase week number
  } // if clicked in medium button, set difficulty to 2
  if ((mousePressed == true) && (mouseX >= 665 && mouseX <= 840) && (mouseY >= 450 && mouseY <= 500)) {
    difficultyLevel = 3; // set difficulty to hard
    weekNumber += 1; // increase week number
  } // if clicked in hard button, set difficulty to 3
} // titleScreen()

// This allows for you to choose your traits at the beginning of the game.
void chooseTraits() { // ((UNFINISHED))
  background(0); // start with background as black (temporary?)
  textSize(20); // font size
  fill(255); // white
  text("Choose your character:", 380, 250); // Character selection text
  createButton(245, 325); // make introvert button
  fill(0); // black
  text("Introvert", 287, 357); // introvert text on button


  image(introvertnormal, 150, 400, introvertnormal.width/4.5, introvertnormal.height/4.5);  //INTRO IMAGE HERE


  createButton(566, 325); // make extrovert button
  fill(0); // black
  text("Extrovert", 607, 357); 


  image(extrovertnormal, 500, 410, extrovertnormal.width/5, extrovertnormal.height/5);  //EXTRO IMAGE HERE


  // extrovert text on a button
  if ((mousePressed == true) && (mouseX >= 245 && mouseX <= 420) && (mouseY >= 325 && mouseY <= 375)) {
    characterPersonality = 0; // sets personality to 0, meaning introvert
    weekNumber += 1; // increase the weekNumber
  } // if clicked in the bounds of introvert, select introvert
  if ((mousePressed == true) && (mouseX >= 566 && mouseX <= 741) && (mouseY >= 325 && mouseY <= 375)) {
    characterPersonality = 1; // sets personality to 1, meaning extrovert
    weekNumber += 1; // increase the weekNumber
  } // if clicked in the bounds of extrovert, select extrovert
} // chooseTraits()

// this sets up the home screen. This will ONLY SHOW THE HUD WHEN homeScreen = true. 
void homeScreen(boolean homeScreen) { // ((UNFINISHED?))
  if (homeScreen == true) {
    drawHUD(); // draw the hud
  } // if homescreen true
} // homeScreen()

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// DRAWING ABOVE ///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// TRACKING UNDER //////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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
    text("Welcome to the Albin O. Kuhn Library and Gallery!\nHere you can study or find help.\nWhat's next?", 300, 610);
  } // if weeknumber is 1
} // weeksNumber()

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
} // statErrorChecking()

// This function moves the words through the title text
void moveNouns() { // ((FINISHED))
  fill(255); // white
  textSize(40); // font size
  textAlign(CENTER); // center the text for ease
  if (titleNounsYPos > 50 && titleNounArrayValue < 5) {
    titleNounsYPos -= 2; // decrease the y value in increments
  } // if the position is more than 50 AND the first 5 indexes in the array, move it upwards
  else if (titleNounArrayValue == 5) {
    textSize(50); // font size
    do {
      titleNounsYPos -= 2; // decrease the y value in increments
    } while (titleNounsYPos < 200); // if its under  where its supposed to be, move it up until it gets there
  } // if the array value reaches the last index, move upwards until it reaches the position it stops in
  if (titleNounsYPos <= 50) {
    titleNounArrayValue += 1; // increase the array value 
    titleNounsYPos = 300; // set it back to starting position
  } // cycle through the array and set it back to y=300
  text(titleNouns[titleNounArrayValue], 500, titleNounsYPos); // set the text in position
} // moveNouns()

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////// TRACKING ABOVE //////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// The following function creates an integer for each week between 0 and ###.
// An event is assigned to each number and, if that number is chosen, it prompts the player with options of how to handle it.
void randomEvents(float randomEventValue) { // ((UNFINISHED))


  //for (float i = 0; i < 11; i++) {
  //  randomEventValue [i] = random (11);
}//for loop

//int select here
//if number = something the corresponding event
//} // randomEvents() 

// IDEK what the fuck we should use this for
void playerChoice() { // ((UNFINISHED))
} // playerChoice()
