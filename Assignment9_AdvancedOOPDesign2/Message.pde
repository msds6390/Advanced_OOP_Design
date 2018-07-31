// Source:
// https://www.youtube.com/watch?v=9LdIa5jc9V0
class Message extends GameObject {

  float alpha;
  float size;
  String msg;
  
  
  Message(String _msg, float _x, float _y, float _z, float _size) {
    x = _x;
    y = _y;
    z = _z;
    msg = _msg;
    size = _size;
    alpha = 1000;
    //hasDied = false;
    hp = 10;

  }
  
  void show() {
    fill(255, alpha);
    textSize(size);
    text(msg, x, y, z);
  }
  
  void act() {
    //y = y + 3;
    z = z + 3;
    alpha = alpha - 3;
    if (alpha <= 0) hp = 0;
  }
  
  boolean hasDied() {
    return z > 100 || hp == 0;
  }
}
