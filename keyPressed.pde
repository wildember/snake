void keyPressed() {
  if (key == CODED && keyCode != currentDirection && !isCounterDirection(keyCode) && !hasMoved) {
    hasMoved = true;
    currentDirection = keyCode;
  }
  if (key == 32) {
    if(isDead) {
      reset();
    } else {
      frameRate(10 + floor(score/5));
    }
  }
}

boolean isCounterDirection(int keyCode)
{
  if (bodyParts.size() == 1) {
    return false;
  }
  
  switch(currentDirection) {
    case UP:
      return keyCode == DOWN;
    case DOWN:
      return keyCode == UP;
    case RIGHT:
      return keyCode == LEFT;
    case LEFT:
      return keyCode == RIGHT;
  }
  
  return false;
}
