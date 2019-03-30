//player blue (66, 134, 244)
//enemy red (244, 75, 66)
//bullets pink (244, 65, 217)
Player player;
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
int mode = 0;
float timeCheck = 0;

void setup() {
  size(1920, 1080);
  player = new Player();
}

  void draw() {
    if (mode == 0) {  
    background(0, 0, 0);
    player.show();
    if (millis() - timeCheck > 1000 ) {
      enemies.add(new Enemy());
      timeCheck = millis();
    }
    for (Enemy enemy: enemies) {
      enemy.approachFromRight();
      enemy.show();
      if (enemy.x < width / 2) {
        mode = 1;
      }
    }
    for (int i = 0; i < player.bullets.size(); i++) { //<>//
      player.bullets.get(i).show();
      player.bullets.get(i).launchRight();
      if (player.bullets.get(i).x > width) player.bullets.remove(i); 
      for (int j = 0; j < enemies.size() && !player.bullets.isEmpty(); j++) {
         if (player.bullets.get(i).x > enemies.get(j).x) {
           player.bullets.remove(i);
           enemies.remove(j);
        }
      }
    }
    } else {
      background(255, 255, 255);
    }
  }
  
  void keyTyped() {
    if (key == ' ') {
      player.shoot();
    }
  }

//4th floor of Franklin Terrace building at VCU in room 401 Concept Art Club
