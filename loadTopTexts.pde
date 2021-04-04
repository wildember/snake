void loadTopTexts()
{
    textSize(12);
    
    textAlign(LEFT);
    fill(0);
    text("Current score: " + score, 10, 10, 500, 20);
    text("High score: " + highScore, 10, 30, 500, 50);
    
    textAlign(CENTER);
    fill(25);
    text("Level: " + level, 10, 10, 500, 20);
    
    if (hasOuroboros) {
      text("Achievements: ", 10, 30, 500, 50);
      fill(255, 255, 0);
      rect(300, 32, 10, 10);
    }
    
    textAlign(RIGHT);
    fill(50);
    text("Stirring: arrows", -10, 10, 500, 20);
    text("Speed up: space", -10, 30, 500, 20);
}
