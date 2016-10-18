class Bomb {
  int x, y;
  color bombColor = color (200, 0, 200);
  boolean offscreen;
//  boolean collide;

  Bomb(int xpos, int ypos) {
    //positioning of the bomb
    x=xpos+20;  
    y=ypos+20;
  }
  int x() {
    return x;
  }
  int y() {
    return y;
  }

  //move 1 pixel at a time
  void move() {
    y+=1;
  }
  
  void draw() {
    fill(bombColor);
    image(bomb, x, y, BOMBWIDTH, BOMBHEIGHT);
  }

//if bomb is offscreen
  boolean offScreen(){
    return true;
    
  }
  
//if the bomb collides with the player
  void collide(Player thePlayer){
    if((x>thePlayer.xpos-25)&&(x < (thePlayer.xpos+PLAYERWIDTH-25)&&(y<(thePlayer.ypos+PLAYERHEIGHT))&&(y>thePlayer.ypos)))
     thePlayer.gameover=true ;
  }
}