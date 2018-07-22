// Source:
// https://www.youtube.com/watch?v=PpfVEEsR8_M
// https://forum.processing.org/two/discussion/12559/how-to-give-my-enemies-a-hitbox
//boolean boxBox(float obj1x, float obj1y, float obj1z, float obj2x, float obj2y, float obj2z) {
//  if (obj1x >= obj2x - 10 &&
//      obj1x <= obj2x - 10 &&
//      obj1y >= obj2y - 10 &&
//      obj1y <= obj2y - 10 &&
//      obj1z >= obj2z - 10 &&
//      obj1z <= obj2z - 10) {
//      return true;
//    }
//    return false;
//}
boolean recRect(float r1x, float r1y, float r1z, float r1h, float r1w,
                float r2x, float r2y, float r2z, float r2h, float r2w) {
  if (r1x + r1w >= r2x &&
      r1x <= r2x + r2w &&
      r1y + r1h >= r2y &&
      r1y <= r2y +r2h &&
      r1z + r1w >= r2z &&
      r1z <= r2z + r2w
      ) {
        return true;
  }
  return false;
}
