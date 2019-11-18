// this draws the pink hud and stat values.
void drawHUD() { // ((UNFINISHED))
  background(0);
  fill(255); // PLACEHOLDER
  rect(10, 225, 250, 400); // PLACEHOLDER
  fill(0); // black
  text("SPRITE GOES HERE", 50, 400); // PLACEHOLDER
  fill(150, 0, 150); // purple
  triangle(0, 400, 0, 750, 500, 750); // left side triangle
  rect(0, 550, 1000, 250); // bottom rectangle
  rect(750, 375, 250, 325); // right rectangle
  triangle(750, 375, 775, 350, 775, 375); // right trangle
  rect(775, 350, 225, 25); // top right rectangle (next to trangle)
  drawStats(); // draw the stat meter in the bottom left
  textSize(20);
  fill(255);
  text("This weeks activity points:", 20, 30);
  text(activityPoints, 280, 30);
  text("Week:", 20, 60);
  text(weekNumber, 80, 60);
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
    text("You are introverted.\nYou study better alone.", 50, 725); // show introverted text under the stat bars
  } // if introvert
  else if (characterPersonality == 1) {
    textSize(13); // font size
    text("You are extroverted.\nYou study better with others.", 50, 725); // show extroverted text under the stat bars
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
