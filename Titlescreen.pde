// This presents the title screen to the user as the very first screen in the game. 
void titleScreen() { // ((FINISHED))
  background(0); // black
  //moveNouns();
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
  createButton(566, 325); // make extrovert button
  fill(0); // black
  text("Extrovert", 607, 357); // extrovert text on a button
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
