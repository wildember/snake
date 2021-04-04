PVector headLocation;
PVector foodLocation = null;
int currentDirection = RIGHT;
int score = 0;
int highScore = 0;
int speed = 10;
ArrayList<PVector> bodyParts;
PFont optimusPrinceps;
PFont arial;
boolean foodIsShown = false;
boolean isDead = false;
boolean gotOuroboros = false;
boolean hasOuroboros = false;

void setup()
{
  size(501, 501);
  frameRate(5);
  optimusPrinceps = createFont("OptimusPrinceps.ttf", 12);
  arial = createFont("arial.ttf", 12); 
  textFont(arial);
  
  bodyParts = new ArrayList<PVector>();
  headLocation = new PVector(width/2, height/2);
  bodyParts.add(headLocation);
}

void draw() 
{
    clear();
    background(255);
    stroke(0);
    rect(0, 50, 500, 500);
    textSize(12);
    textAlign(LEFT);
    fill(0);
    text("Current score: " + score, 10, 10, 500, 20);
    text("High score: " + highScore, 10, 30, 500, 50);
    textAlign(RIGHT);
    fill(50);
    text("Stirring: arrows", -10, 10, 500, 20);
    text("Speed up: space", -10, 30, 500, 20);
    
    if (isDead) {
      showDeath();
      return;
    }
    
    frameRate(5 + floor(score/5));
    
    drawBody();
    spawnFood();
    
    move(currentDirection);
    isDead = checkCollisions();
}
