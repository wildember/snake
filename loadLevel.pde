ArrayList<PVector> loadLevel(int levelIndex)
{
  switch(levelIndex) {
    case 0:
      return new ArrayList<PVector>();
    case 1:
      return loadLevel1();
    case 2:
      return loadLevel2();
    case 3:
      return loadLevel3();
    case 4:
      return loadLevel4();
    default:
      return loadLevel4();
  }
}

ArrayList<PVector> loadLevel1()
{
  ArrayList<PVector> levelWalls = new ArrayList<PVector>();
  
  for(int i = 0; i < 50; i++) {
    levelWalls.add(new PVector(i * 10, 50));
    levelWalls.add(new PVector(i * 10, 490));
  }
  
  return levelWalls;
}

ArrayList<PVector> loadLevel2()
{
  ArrayList<PVector> levelWalls = loadLevel1();
  
  for(int i = 5; i < 50; i++) {
    if (i > 20 && i < 30) {
      continue;
    }
    levelWalls.add(new PVector(0, i * 10));
    levelWalls.add(new PVector(490, i * 10));
  }
  
  return levelWalls;
}

ArrayList<PVector> loadLevel3()
{
  ArrayList<PVector> levelWalls = loadLevel2();
  
  for(int i = 0; i < 50; i++) {
    if ((i > 10 && i < 15) || (i > 25 && i < 30) || (i > 40 && i < 45)) {
      continue;
    }
    levelWalls.add(new PVector(i * 10, 250));
  }
  
  return levelWalls;
}

ArrayList<PVector> loadLevel4()
{
  ArrayList<PVector> levelWalls = loadLevel3();
  
  for(int i = 5; i < 50; i++) {
    if ((i > 10 && i < 15) || (i > 25 && i < 30) || (i > 40 && i < 45)) {
      continue;
    }
    levelWalls.add(new PVector(250, i * 10));
  }
  
  return levelWalls;
}
