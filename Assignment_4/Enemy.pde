class Enemy {
  //variables 
  PVector enemyPosition;
    PVector enemyVelocity;
    float enemyOpacity= 100;
  Enemy() {
   // Initialize PVectors
    enemyPosition = new PVector(int(random(-50,450)), int(random(9,350))); 
   enemyVelocity = new PVector(3,8);
    
  }
  void enemyDisplay() {
  fill(0,0,0);
  rect(enemyPosition.x, enemyPosition.y, 20,20);
  }
  // Function that will give the enemy the ability to chase the player using return
float chase(float pos, boolean enemyVertical, int randomNum) {
  //Variables made for X and Y seperated so they aren't the same
  float randomMovementX = ((noise(frameCount / 5 + randomNum) - 0.5) * 6);
  float randomMovementY = ((noise(frameCount / 5 + randomNum + 500) - 0.5) * 6);
  //will return the position of the enemy if it is to the left or right  of the player
  if(enemyVertical==true) {
    if(pos<=player.playerPosition.y) {
       return(pos + enemyVelocity.y  + randomMovementY); 
    }
    else { 
      return(pos-enemyVelocity.y + randomMovementY);
    } 
  }
  else { 
    if(pos<=player.playerPosition.x) {
      return(pos + enemyVelocity.x + randomMovementX); 
    }
    else { 
    return(pos-enemyVelocity.x + randomMovementX);
    }
  }
}
}
