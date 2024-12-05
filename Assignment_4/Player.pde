//Make the cool variables and initialize
PImage CowboyStand;
boolean playerMovingRight = false;
boolean playerMovingleft = false;
boolean playerFacingleft = false;
boolean playerFacingright = true;
// declare PVectors
PVector playerPosition;
PVector playerVelocity;
PVector playerAcc;
 class Player {
   Player() {
     imageMode(CENTER);
   //Get images for cowboy and subsequent animations
   CowboyStand = loadImage("Cowboy Stand.png");
   //Assign the PVectors values
   playerPosition = new PVector(100,350); 
   playerVelocity = new PVector(4,6);
   
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
 }
 }
