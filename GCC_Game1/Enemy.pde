class Enemy {
  float x = width;
  float y = height / 2;
  float enemySpeed = 2;
  //show
  //approachfromright
  //approachfromleft
  
  void show() {
    stroke(244, 75, 66);
    fill(244, 75, 66);
    circle(x, y, 20);
  }
  
  void approachFromRight() {
    x = x - enemySpeed;
  }
}
