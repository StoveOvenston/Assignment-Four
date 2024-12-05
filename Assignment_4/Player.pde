//Make the cool variables and initialize
PImage CowboyStand;
boolean playerisMovingRight = false;
boolean playerisMovingleft = false;
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
   //Pvectors
   playerPosition = new PVector(100,350); 
   }
   void playerdisplay() {
    image(CowboyStand, playerPosition.x, playerPosition.y);
   }
 }
