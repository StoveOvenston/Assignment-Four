//Make the cool variables and initialize
PImage CowboyStand;
boolean playerMovingRight = false;
boolean playerMovingLeft = false;
boolean playerFacingleft = false;
boolean playerFacingright = true;
boolean playerJumping = false;
// declare PVectors
PVector playerPosition;
PVector playerVelocity;
PVector playerAcc;
PVector playerJumpForce;
 class Player {
   Player() {
     imageMode(CENTER);
   //Get images for cowboy and subsequent animations
   CowboyStand = loadImage("Cowboy Stand.png");
   //Assign the PVectors values
   playerPosition = new PVector(100,350); 
   playerVelocity = new PVector(4,6);
   // Assign a value for the players accelleration (this will work as gravity)
   playerAcc = new PVector(0,5);
   //Now assign a variable for the force that the player will jump with
   playerJumpForce = new PVector(0,-16);
   }
   void playerdisplay() {
    //displays image of player cowboy
     image(CowboyStand, playerPosition.x, playerPosition.y);
   }
//Function to dictate what happens if the player is moving certain ways
 void playerMovement() {
   if (playerMovingRight == true) {
    //Adds the Pvectors of velocity and position
    playerPosition.x = playerPosition.x + playerVelocity.x;
   }
   if (playerMovingLeft == true) {
    //Adds the Pvectors of velocity and position
    playerPosition.x = playerPosition.x - playerVelocity.x;
 }
 if (playerJumping == true) {
   playerPosition.y = playerPosition.y + playerJumpForce.y;
   playerJumpForce.y = playerJumpForce.y + playerAcc.y;
 }
  else if(playerPosition.y >= 360) {
  playerPosition.y = 360;
}
 }
 }
