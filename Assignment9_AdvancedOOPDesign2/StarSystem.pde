// Source:
// https://www.youtube.com/watch?v=17WoOqgXsRM
// https://cs.brynmawr.edu/gxk2013/examples/transformations/starfield/

class StarSystem {
  ArrayList<Star> stars;
  
  StarSystem(){
    stars = new ArrayList<Star>();
  }
  
  void addStar() {
    for (int i = 0; i < numStars; i ++) {
      stars.add(new Star());
    }
    
  }
  
  void run() {
    for (int i = 0; i < stars.size(); i ++ ) {
      Star s = stars.get(i);
      s.update();
      s.draw();
    }
  }
}
