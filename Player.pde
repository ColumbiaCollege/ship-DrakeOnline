class Player {
  float playerX = width/2;
  float playerY = height/2;
  int playerSpeed = 1;
  
  void drawPlayer() {
    ellipse(playerX, playerY, 20, 20);  
  }
  
  void movePlayer() {    
    // For smooth diagonal movements
    if(mouseX > playerX && mouseY > playerY) {
      playerX += playerSpeed;
      playerY += playerSpeed;
      return;
    } else if (mouseX < playerX && mouseY < playerY) {
      playerX -= playerSpeed;
      playerY -= playerSpeed;
      return;
    } else if (mouseX > playerX && mouseY < playerY) {
      playerX += playerSpeed;
      playerY -= playerSpeed;
      return;
    } else if (mouseX < playerX && mouseY > playerY) {
      playerX -= playerSpeed;
      playerY += playerSpeed;
      return;
    }
    
    // Check the X positon of the mouse and move the player closer
    if(mouseX > playerX) {
      playerX += playerSpeed;
    } else if (mouseX < playerX) {
      playerX -= playerSpeed;  
    }
    
    // Check the Y position of the mouse and move the player closer
    if(mouseY > playerY) {
      playerY += playerSpeed;  
    } else if (mouseY < playerY) {
      playerY -= playerSpeed;  
    }
  }
}
