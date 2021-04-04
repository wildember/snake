void move(int direction)
{ 
  float tailX = bodyParts.get(bodyParts.size() - 1).x;
  float tailY = bodyParts.get(bodyParts.size() - 1).y;
  
  float[] currentBodyPartXs = new float[bodyParts.size()];
  float[] currentBodyPartYs = new float[bodyParts.size()];
  
  for(int i = 0; i < bodyParts.size(); i++) {
    currentBodyPartXs[i] = bodyParts.get(i).x;
    currentBodyPartYs[i] = bodyParts.get(i).y;
  }
  
  for(int i = 1; i < bodyParts.size(); i++) {
    bodyParts.set(i, new PVector(currentBodyPartXs[i - 1], currentBodyPartYs[i - 1]));
  }
  
  switch(direction) {
    case UP:
      if (headLocation.y == 50) {
        headLocation.y = 500 - speed;
      } else {
        headLocation.y -= speed;
      }
      break;
    case DOWN:
      if (headLocation.y == 490) {
        headLocation.y = 40 + speed;
      } else {
        headLocation.y += speed;
      }
      break;
    case RIGHT:
      if (headLocation.x == 490) {
        headLocation.x = -10 + speed;
      } else {
        headLocation.x += speed;
      }
      break;
    case LEFT:
      if (headLocation.x == 0) {
        headLocation.x = 500 - speed;
      } else {
        headLocation.x -= speed;
      }
      break;
  }
  
  if (headLocation.y == foodLocation.y && headLocation.x == foodLocation.x) {
    foodLocation = null;
    bodyParts.add(new PVector(tailX, tailY));
    score++;
  }
}
