class Bullet {
  float bulletX;
  float bulletY;
  int bulletSpeed = 8;
  boolean isFiringRight = false;
  boolean isFiringLeft = false;
  Bullet() {
  }
  void drawBullet() {
    fill(255, 235, 5);
    rect(bulletX, bulletY, 10, 10);
  }
  void firing() {
    if (isFiringRight == true) {
      bulletX += bulletSpeed;
    } else if (isFiringLeft == true) {
      bulletX -=bulletSpeed;
    }
  }
  //Create function for bullet damage while using the enemy object array as a parameter
  void bulletDamage(Enemy[] enemies) {
    for (Enemy enemy : enemies) {
      //Calculates if the bullet is hitting an enemy and kills them. The loop is so that it goes for the whole array
      if (dist(bulletX, bulletY, enemy.enemyPosition.x, enemy.enemyPosition.y)<=20 && enemy.enemyAlive == true) {
        background(255, 255, 0);
        enemy.enemyAlive = false;
        points = points + 1;
      }
    }
  }
}
