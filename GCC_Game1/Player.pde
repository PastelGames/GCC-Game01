class Player {
  float x = width / 2;
  float y = height / 2;
  int direction = 1; //1 represents facing right, 0 represents facing left
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  
  //show
  //faceRight
  //faceLeft
  //shoot
  
  void show() {
    stroke(66, 134, 244);
    fill(66, 134, 244);
    circle(x, y, 100);
  }
  
  void shoot() {
    Bullet newBullet = new Bullet();
    bullets.add(newBullet);
  }
  
}
