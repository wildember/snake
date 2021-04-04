void drawBody()
{
  stroke(255);
  fill(0);
  for(int i = 0; i < bodyParts.size(); i++) {
    rect(bodyParts.get(i).x, bodyParts.get(i).y, 10, 10);
  }
  fill(255);
}
