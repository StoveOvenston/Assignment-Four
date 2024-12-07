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
  //Calls function to stop player from falling through the map
  player.playerBounds();
     player.playerJumping();
 println(player.playerFalling);
}
//Create transparent rectangles that shows collision
//void borders() {
 //fill(255,0,0);
  //rect(0, 375, 1600, 50);

 

void keyPressed() {
 if (key == 'd') {
   player.playerMovingRight = true;
}
 if (key == 'a') {
   player.playerMovingLeft = true;
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
    
