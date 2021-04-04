boolean checkCollisions()
{
  if (headLocation.x < 0 || headLocation.x > 490 || headLocation.y < 50 || headLocation.y > 490) {
    return true;
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
