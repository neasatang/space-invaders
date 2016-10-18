class Bullet {
  int width, height, x, y;
  
  //creates the colour of the bullet
  color bulletColor = color (200, 0, 200);
  
  Bullet(int xpos, int ypos) {
    x=xpos; 
    y=ypos;
    width=3; 
    height=6;
  }
  int x() {
    return x;
  }
  int y() {
    return y;
  }

//movement of the bullet
  void move() {
    y-=2;
  }

  void draw() {
    fill(bulletColor);
    rect(x, y, width, height);
  }
  
  //collision of the aliens with the bullet
  void collide(Alien aliens[]){
    for(int i=0; i<aliens.length; i++){
      if((x> aliens[i].x)&&(x < (aliens[i].x+ALIEN_WIDTH))&&(y<(aliens[i].y+ALIEN_HEIGHT))&&(y>aliens[i].y)&&(!aliens[i].dead))
        aliens[i].explode(); 
      }
    }
}