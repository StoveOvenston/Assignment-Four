class Bullet {
float bulletX;
float bulletY;
int bulletSpeed = 8;
boolean isFiringRight = false;
boolean isFiringLeft = false;
  Bullet() {
    
  }
  void drawBullet() {
   fill(255,235,5);
   rect(bulletX, bulletY, 10,10);
  }
  void firing() {
  if(isFiringRight == true) {
   bulletX += bulletSpeed;
  }
  }
  
  }
