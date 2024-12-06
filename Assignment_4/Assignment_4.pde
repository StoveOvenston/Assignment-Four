// Declare variables
PImage Background;
//Declare class
Player player; 
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
 //Calls function for borders
 //borders();
 // Calls the player movement function from the player class
 player.playerMovement();
  
}
//Create transparent rectangles that shows collision
//void borders() {
 //fill(255,0,0);
  //rect(0, 375, 1600, 50);

 

void keyPressed() {
 if (key == 'd') {
   playerMovingRight = true;
}
 if (key == 'a') {
   playerMovingLeft = true;
}
if (key == ' ') {
  playerJumping = true ;
  maxHeight = playerPosition.y - jumpHeight;
}
}
void keyReleased() {
  if (key == 'd') {
    playerMovingRight = false;
  }
  if (key == 'a') {
   playerMovingLeft = false;
}
}
    
