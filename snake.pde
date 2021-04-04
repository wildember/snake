PVector headLocation;
PVector foodLocation = null;
int currentDirection = RIGHT;
int score = 0;
int highScore = 0;
int speed = 10;
int level = 1;
ArrayList<PVector> bodyParts;
ArrayList<ArrayList<PVector>> walls;
ArrayList<PVector> currentLevelWalls;
PFont optimusPrinceps;
PFont arial;
boolean foodIsShown = false;
boolean isDead = false;
boolean hasMoved = false;
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
  walls = new ArrayList<ArrayList<PVector>>();
  for(int i = 0; i <= 3; i++) {
    walls.add(loadLevel(i));
  }
  currentLevelWalls = walls.get(0);
  headLocation = new PVector(width/2, height/2);
  bodyParts.add(headLocation);
}

void draw() 
{
    clear();
    background(255);
    stroke(0);
    rect(0, 50, 500, 500);
    loadTopTexts();
    loadLevelWalls();
    
    if (isDead) {
      showDeath();
      return;
    }
    
    frameRate(5 + floor(score/5));
    level = floor(score/10) + 1;
    currentLevelWalls = loadLevel(floor(score/10));
    
    hasMoved = false;
    drawBody();
    spawnFood();
    
    move(currentDirection);
    isDead = checkCollisions();
}
