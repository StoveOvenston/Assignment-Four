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
 // Calls the player movement function from the player class
 player.playerMovement();
  
}
void keyPressed() {
 if (key == 'd') {
   playerMovingRight = true;
}
}
void keyReleased() {
  if (key == 'd') {
    playerMovingRight = false;
  }
}
    
