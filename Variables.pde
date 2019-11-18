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
int randomEventValue = 0; // current weekly random event value
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
int activityPoints = 20; // used on a weekly basis
boolean clickOnButton = false;
// VARIABLES
