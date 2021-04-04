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
      headLocation.y -= speed;
      break;
    case DOWN:
      headLocation.y += speed;
      break;
    case RIGHT:
      headLocation.x += speed;
      break;
    case LEFT:
      headLocation.x -= speed;
      break;
  }
  
  if (headLocation.y == foodLocation.y && headLocation.x == foodLocation.x) {
    foodLocation = null;
    bodyParts.add(new PVector(tailX, tailY));
    score++;
  }
}
