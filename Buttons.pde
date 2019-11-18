// The following is a reusable function that allows for a button to be made.
// When creating a button, set it up as such: createButton(xposition, yposition);
void createButton(float buttonX, float buttonY) { // ((FINISHED))
  fill(255);
  rect(buttonX, buttonY, BUTTON_WIDTH, BUTTON_HEIGHT);
} // createButtons

// These buttons will be reused often on the HUD. 
void reusedButton(int reusedButton) { // ((UNFINISHED))
  textSize(25); // font size
  if (reusedButton == 1) {
    createButton(790, 375); // button preset
    fill(0); // black text
    text("Go to class", 805, 410); // class text
    if ((mousePressed == true) && (mouseX >= 790 && mouseX <= 965) && (mouseY >= 375 && mouseY <= 425)) {
      activityPoints -= 1; // decrease activity points by 1
      gradesValue += 0.5; // increase grades value by .5%
    } // button function for going to class
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
