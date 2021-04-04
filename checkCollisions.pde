boolean checkCollisions()
{
  for(int i = 1; i < currentLevelWalls.size(); i++) {
    if (headLocation.x == currentLevelWalls.get(i).x && headLocation.y == currentLevelWalls.get(i).y) {
      return true;
    }
  }
  
  if (bodyParts.size() < 5) {
    return false;
  }
  
  for(int i = 1; i < bodyParts.size(); i++) {
    if (headLocation.x == bodyParts.get(i).x && headLocation.y == bodyParts.get(i).y) {
      if (i == bodyParts.size() - 1 && !hasOuroboros) {
        hasOuroboros = true;
        gotOuroboros = true;
      }
      return true;
    }
  }
  
  return false;
}
