// Source:
// https://www.youtube.com/watch?v=MJh3blPxcQw
// https://www.youtube.com/watch?v=PpfVEEsR8_M
// Category of things, not an actual 'thing' created in the game, hence abstract class
abstract class GameObject {
  float x, y, z, dx, dy, dz, hp, size;
  
  GameObject() {
  }
  
  void show() {
  }
  
  void act() {
  }
  
  boolean hasDied() {
    return false;
  }
}
