class Bullet {

float x = width / 2;
float y = height / 2;
float bulletSpeed = 5;

void launchRight() {
  x = x + bulletSpeed;
}

void launchLeft() {
  x = x - bulletSpeed;
}

//void killEnemy() {
  
//}

void show() {
  stroke(244, 65, 217);
  line(x, y, x + 10, y);
  strokeWeight(3);
}

}
