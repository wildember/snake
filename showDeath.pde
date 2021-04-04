void showDeath()
{
  textFont(optimusPrinceps);
  fill(0);
  rect(0, 0, 501, 501);
  textAlign(CENTER);
  fill(255, 0, 0);
  textSize(72);
  text("YOU DIED", 10, 200, 500, 100);
  
  if (score > highScore) {
    textSize(18);
    text("New high score", 10, 300, 500, 100);
  }
  
  if (gotOuroboros) {
    fill(255, 255, 0);
    textSize(18);
    text("Achievement unlocked: Ouroborus", 10, 340, 500, 100);
    rect(235, 370, 10, 10);
    rect(245, 370, 10, 10);
    rect(255, 370, 10, 10);
    
    rect(235, 380, 10, 10);
    rect(255, 380, 10, 10);
    
    rect(235, 390, 10, 10);
    rect(245, 390, 10, 10);
    rect(255, 390, 10, 10);
  }
  
  fill(255);
  textSize(14);
  String points = score == 1 ? " point" : " points";
  text("You scored " + score + points + ". Press SPACE to try again", 10, 430, 500, 100);
  textFont(arial);
}
