// Declare and initialize variables
PImage Background;
 int platformX = 30;
 int platformY = 220;
int platformsW = 100;
int platformsH = 10;
//Declare class
Player player; 
//Create an array for the enemies
Enemy[] enemies = new Enemy[20]
void setup(){
  imageMode(CENTER);
  size(400,400);
  // Create objects
  player = new Player();  
  // Use the image variable from earlier and assign it a file
  Background = loadImage("WesternBackground.png");
}
void draw() {
  //Loads background image
  image(Background, 200,200);
  //Calls player object and then calls the display function inorder to show the player
  player.playerdisplay();
 // Calls the player movement function from the player class
 player.playerMovement();
  //Calls function to stop player from falling through the map
  player.playerBounds();
     //Calls function  for all the player jump code
     player.playerJumping();
 //Call function to display enemies
 enemy.
 //Code to draw all the platforms around the map for the player to jump in
  fill(100,45,11);
  rect(platformX, platformY, platformsW,platformsH);
  rect(platformX +220, platformY, platformsW,platformsH);
  
}
;

 

void keyPressed() {
 if (key == 'd') {
   player.playerMovingRight = true;
   player.playerFacingleft = false;
   player.playerFacingright = true;
}
 if (key == 'a') {
   player.playerMovingLeft = true;
   player.playerFacingright = false;
   player.playerFacingleft = true;
   
}
if (key == ' ') {
  player.playerJumping = true;
  println(player.playerJumping);
//  jumpHeight = playerPosition.y + 100;
}
}
void keyReleased() {
  if (key == 'd') {
    player.playerMovingRight = false;
  }
  if (key == 'a') {
   player.playerMovingLeft = false;
}
}
    
