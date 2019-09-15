/*
 * Title: Ship
 * Description: Make a shape follow the mouse coordinates
 * Author: Drake Cummings
 * Date: September 15th, 2019
 */
 
Player playerOne = new Player();
 
void setup() {
  size(1500,1000);
  frameRate(120);
  noStroke();
  playerOne.drawPlayer();
}

void draw() {
  background(41);
  playerOne.movePlayer();
  playerOne.drawPlayer();
}
