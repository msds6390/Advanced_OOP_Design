class Score extends Message {
  Score(String _msg, float _x, float _y, float _z, float _size) {
    super(_msg, _x, _y, _z, _size);
    dx = 0;
    dy = 0;
    dz = 0;
  }
  
  
  void show() {
    fill(255, alpha);
    textSize(size);
    text(msg, x, y, z);
  }
  
  void act() {
    //y = y + 3;
    //z = z + 3;
    //alpha = alpha - 3;
    //if (alpha <= 0) hp = 0;
  }
  
  boolean hasDied() {
    return false;
  }
}
