class Enemy {
  //variables
  PVector enemyPosition;
  PVector enemyVelocity;
  float enemyOpacity= 100;
  // Boolean to make sure the enemy is alive
  boolean  enemyAlive = true;
  Enemy() {
    // Initialize PVectors
    enemyPosition = new PVector(int(random(-50, 450)), int(random(9, 350)));
    enemyVelocity = new PVector(1, 1);
  }
  void enemyDisplay() {
    fill(0, 0, 0, enemyOpacity);
    rect(enemyPosition.x, enemyPosition.y, 20, 20);
    if (enemyAlive == false) {
      noStroke();
      enemyOpacity = 0;
      enemyPosition.x = 900;
      enemyPosition.y = 900;
    }
  }
  // Function that will give the enemy the ability to chase the player using return
  float chase(float pos, boolean enemyVertical, int randomNum) {
    //Variables made for X and Y seperated so they aren't the same
    float randomMovementX = ((noise(frameCount / 5 + randomNum) - 0.5) * 6);
    float randomMovementY = ((noise(frameCount / 5 + randomNum + 500) - 0.5) * 6);
    //will return the position of the enemy if it is to the left or right  of the player
    if (enemyVertical==true) {
      if (pos<=player.playerPosition.y) {
        return(pos + enemyVelocity.y  + randomMovementY);
      } else {
        return(pos-enemyVelocity.y + randomMovementY);
      }
    } else {
      if (pos<=player.playerPosition.x) {
        return(pos + enemyVelocity.x + randomMovementX);
      } else {
        return(pos-enemyVelocity.x + randomMovementX);
      }
    }
  }
  void enemyDamage() {
    //if the enemy is alive amd touches the player flash red and set the palyer's alive boolean to false killing them
    if (dist(enemyPosition.x, enemyPosition.y, player.playerPosition.x, player.playerPosition.y)<=20 && enemyAlive == true) {

      background(255, 0, 0);
      player.playerAlive = false;
    }
  }
}
