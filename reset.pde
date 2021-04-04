void reset()
{
    if (score > highScore) {
      highScore = score;
    }
    score = 0;
    currentDirection = RIGHT;
    foodLocation = null;
    bodyParts = new ArrayList<PVector>();
    headLocation = new PVector(width/2, height/2);
    bodyParts.add(headLocation);
    foodIsShown = false;
    isDead = false;
    gotOuroboros = false;
}
