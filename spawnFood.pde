void spawnFood()
{
  if (foodLocation == null) {
    PVector location = generateLocation();
    while (isWithinBody(location)) {
      location = generateLocation();
    }
    foodLocation = location;
  }
  
  fill(255, 0, 0);
  rect(foodLocation.x, foodLocation.y, 10, 10);
  fill(255);
}

PVector generateLocation()
{
  int x = round(round(random(0, 49)) * 10);
  int y = round(round(random(5, 49)) * 10);
  
  return new PVector(x, y);
}

boolean isWithinBody(PVector location)
{
  for(int i = 0; i < bodyParts.size(); i++) {
    if (bodyParts.get(i).x == location.x && bodyParts.get(i).y == location.y) {
      return true;
    }
  }
  
  return false;
}
