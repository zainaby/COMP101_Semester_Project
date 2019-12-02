
///////////////////////////////////


// Needs to activate every time 1 week passes = increment increases once (not affected by hourly time decreasing (168 hrs per week) because then it'll happen by hour)
// EDIT: actually would it make more sense to make it appear when hours reach 0? idk if subtracting hours was a still a thing
// Buttons are drawn but don't function as buttons, they're just text and rectangles right now. 
// I decided repeats are ok, mostly because I didn't feel like telling it not to, and most of these can happen to someone more than once.
// Buttons also need to have effects (ex: if button == yes, happinessvalue * .5, moneyvalue * -.7 or something idk that should be quick to toss in here)
// 15 seems like a lot, because each one has to have their own effects, so it can be cut down or added to.


///////////////////////////////////


float randNum = int(random(0, 15)); //actual number randomizer

void setup() {

  size(1000, 750); // sets size of window
  background(0); // TEMPORARY
  noStroke(); // remove outline
  fill(50); // hub
  triangle(0, 400, 0, 750, 500, 750); // left side triangle
  rect(0, 550, 1000, 250); // bottom rectangle
  rect(750, 375, 250, 325); // right rectangle
  triangle(750, 375, 775, 350, 775, 375); // right trangle
  rect(775, 350, 225, 25); // top right rectangle (next to trangle)
}

void draw() {
  random();
}

void random() {
  fill(100);
  rect(75, 150, 850, 350);
  textSize(24);
  fill(255);

  if (randNum == 0) {
    text("You met Chip, the emotional support puppy!\nYou feel a lot happier.", 95, 200);
    fill(120);
    rect (420, 400, 170, 70);
    fill (255);
    text("Okay!", 475, 443);
  }

  if (randNum == 1) {
    text("Pop quiz! What's the cosine of 90 degrees?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Root 3!", 265, 443);
    text("Zero!", 635, 443);
  }
  if (randNum == 2) {
    text("You've been contacted with an internship offer! Do you take it?\nYour time will be limited, but you get paid.", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Yes", 265, 443);
    text("No", 635, 443);
  }
  if (randNum == 3) {
    text("Your favorite TV show just launched another season.\nWatch it?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Yes", 265, 443);
    text("No", 635, 443);
  }
  if (randNum == 4) {
    text("A concert is playing tonight and your friends are going.\nDo you go with them?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Yes", 265, 443);
    text("No", 635, 443);
  }
  if (randNum == 5) {
    text("Ouch! You fell down the stairs on the way to the Arts and Humanities\nbuilding. Seven people saw you and now your fall is posted on the\nSnapmap. You're humiliated!", 95, 200);
    fill(120);
    rect (420, 400, 170, 70);
    fill (255);
    text("Okay...", 475, 443);
  }
  if (randNum == 6) {
    text("You got a date with your crush! Do you take them to an expensive\ndinner or take them to True Grits?", 95, 200);
    fill(120);
    rect (220, 400, 230, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("They're worth it", 235, 443);
    text("D Hall it is", 606, 443);
  }
  if (randNum == 7) {
    text("The school is having a really awesome late night event,\nbut you have a Math exam in the morning.\nDo you go anyway?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Yes", 265, 443);
    text("No", 635, 443);
  }
  if (randNum == 8) {
    text("It's a slow weekend. Do you want to visit home or take this time\nto study?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Home", 265, 443);
    text("Study", 635, 443);
  }
  if (randNum == 9) {
    text("Career fair! Do you print out your resumes and charm the best\nrecruiters or do something more enjoyable?", 95, 200);
    fill(120);
    rect (220, 400, 230, 70);
    rect (580, 400, 200, 70);
    fill (255);
    text("I'm getting hired!", 235, 443);
    text("Not feelin' it..", 600, 443);
  }
  if (randNum == 10) {
    text("You're at a party! Someone offers you a suspicious white powder.\nDo you take it?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Yes", 265, 443);
    text("No", 635, 443);
  }
  if (randNum == 11) {
    text("Your friends want to eat out in town. Join them?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Yes", 265, 443);
    text("No", 635, 443);
  }
  if (randNum == 12) {
    text("There's a tutoring appointment open in the library for the class you're\nstruggling in. Get some help?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Yes", 265, 443);
    text("No", 635, 443);
  }
  if (randNum == 13) {
    text("UMBC has a basketball game this weekend! Are you going?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Yes", 265, 443);
    text("No", 635, 443);
  }
  if (randNum == 14) {
    text("You don't feel so great... Do you want skip class today?", 95, 200);
    fill(120);
    rect (220, 400, 170, 70);
    rect (580, 400, 170, 70);
    fill (255);
    text("Yes", 265, 443);
    text("No", 635, 443);
  }
  if (randNum == 15) {
    text("You're sick! You can't go to class today. You're also achy. And you have a nosebleed..", 95, 200);
    fill(120);
    rect (420, 400, 170, 70);
    fill (255);
    text("Okay.", 475, 443);
  }
}
