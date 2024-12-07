
 class Player {
 //Make the cool variables and initialize
PImage CowboyStand;
PImage CowboyStandLeft;
boolean playerMovingRight = false;
boolean playerMovingLeft = false;
boolean playerFacingleft = false;
boolean playerFacingright = true;
// Booleans to dictate  if the player is jumping or not
boolean playerJumping = false;
boolean playerFalling = false;
boolean landed = true;
//Boolean for if the player is alive
boolean playerAlive = true;

float jumpHeight;  // And the MAX point the player can reach

   // declare PVectors
PVector playerPosition;
PVector playerVelocity;
PVector playerAcc;
PVector playerJumpForce;
   Player() {
     imageMode(CENTER);
   //Get images for cowboy and subsequent animations
   
     CowboyStand = loadImage("Cowboy Stand.png");
   

      CowboyStandLeft = loadImage("Cowboy-left.png");
    
   //Assign the PVectors values
   playerPosition = new PVector(100,350); 
   playerVelocity = new PVector(3,8);
   // Assign a value for the players accelleration (this will work as gravity)
   playerAcc = new PVector(0,3);
   
   //Initialize the VARAIBLES RAHHHG
  jumpHeight = playerPosition.y - 100;
   }
   void playerdisplay() {
    //displays image of player cowboy
     if (playerFacingright == true) {
     image(CowboyStand, playerPosition.x, playerPosition.y);
   }
     if (playerFacingleft == true) {
     image(CowboyStandLeft, playerPosition.x, playerPosition.y);
     }
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

 }
 void playerJumping() {
   if (playerJumping == true) {
   //Accelleratioon on jump to simulate gravity
     playerVelocity.y -= playerAcc.y;
   //Adds the velocity (while the acc is being subtracted) to jump up)
   playerPosition.y += playerVelocity.y;
    
    
 }
 //Code to determine if the player is falling
if (playerPosition.y <= jumpHeight) {
  playerJumping = false;
playerFalling = true;
}
 if(playerFalling == true) {
 //Simulates gravity by having 
  playerVelocity.y += playerAcc.y; 
 playerPosition.y += playerVelocity.y;

 } 
 }
 void playerBounds() {
 if(playerPosition.y >= 350) {
   playerFalling = false;
  
   playerPosition.y = 350;
   playerVelocity.y = 0;
 }
  if(playerPosition.x >= 390) {
   playerPosition.x = 390;
 }
  if(playerPosition.x <= 0) {
   playerPosition.x = 0;
 }
 //Platform bounds
//Chekcs if the player is within the x values of the playform, and the y value of it.
   //Platform  
   if (playerPosition.x >= 220 && playerPosition.x <= 350 && playerPosition.y >= 110) { 
   //This bit is specifically what makes it so that the player is able to go under the platform rather than being teleported over it 
   if (playerPosition.y >= platformY - 25 && playerPosition.y <= platformY) {
   playerFalling = false;
   //Snaps the player on top of the platform
   playerPosition.y = platformY-25;
   //Sets Y velocity to zero so that they don't continue to fall 
   playerVelocity.y = 0;
    }  
  }
 
 }
 
 


 }
