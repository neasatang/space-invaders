/*
class Shields{
  color  shieldcolor  =  color(200, 0, 200); 
  int xpos; int ypos;
  
  Shields(int xpos, int ypos)
  {
    xpos=SCREENX/2;  
        ypos=400;
        
  }
  
  void draw()
  {
    fill(shieldcolor);
    rect(x, y, SHIELDWIDTH, SHIELDHEIGHT);
  }
  
  void bulletCollide (Bullet bullets[], Shields theShield)
  {
    for(int i=0;i<bullets.length;i++)
    {
    if((bullets[i].x> theShield.xpos)&&(bullets[i].x<(theShield.xpos+SHIELDWIDTH))&&(bullets[i].y<(theShield.ypos+SHIELDHEIGHT))&&(bullets[i].y>theShield.ypos))
        y+=500;
    }
  }
  
  void bombCollide (Bomb bombs[])
  {
    if((bombs[i].x> xpos)&&(bombs[i].x<(xpos+SHIELDWIDTH))&&(bombs[i].y<(ypos+SHIELDHEIGHT))&&(bombs[i].y>ypos)&&(!bombs[i].dead))
        y+=500;
  }
}
*/