
 class Player {
 //Make the cool variables and initialize
PImage CowboyStand;
boolean playerMovingRight = false;
boolean playerMovingLeft = false;
boolean playerFacingleft = false;
boolean playerFacingright = true;
// Booleans to dictate  if the player is jumping or not
boolean playerJumping = false;
boolean playerFalling = false;
boolean landed = true;

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
   //Assign the PVectors values
   playerPosition = new PVector(100,350); 
   playerVelocity = new PVector(4,8); // Initial Y velocity is 0
   // Assign a value for the players accelleration (this will work as gravity)
   playerAcc = new PVector(0,5);
   //Now assign a variable for the force that the player will jump with
  // playerJumpForce = new PVector(0,50);
   //Initialize the VARAIBLES RAHHHG
  jumpHeight = playerPosition.y - 100;
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
 }
 
 }
