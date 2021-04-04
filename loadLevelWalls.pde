void loadLevelWalls()
{
  int levelIndex = min(walls.size(), level) - 1;
  currentLevelWalls = walls.get(levelIndex);
  
  fill(255, 0, 255);
  for(int i = 0; i < currentLevelWalls.size(); i++) {
    PVector currentTile = walls.get(levelIndex).get(i);
    rect(currentTile.x, currentTile.y, 10, 10);
  }
  fill(255);
}
