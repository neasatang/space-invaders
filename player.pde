class  Player  {  
    float  xpos;  int  ypos;
    color  paddlecolor  =  color(200, 0, 200);  
    boolean gameover;
    
    Player(int  screen_y)  
    {  
        xpos=SCREENX/2;  
        ypos=screen_y;  
    }  
    void  move(int  x){  
        if(x>SCREENX-PLAYERWIDTH/2)  xpos  =  SCREENX-PLAYERWIDTH/2;
        else
        {
          if(x<PLAYERWIDTH/2)  xpos  =  PLAYERWIDTH/2;
          else xpos=x;  
        }
    }  
    void  draw()  
    {  
        fill(paddlecolor);  
        image(myPlayer, xpos-PLAYERWIDTH/2,  ypos,  PLAYERWIDTH,  PLAYERHEIGHT);  
       if(gameover==true){
         text("Game over!",250,250);
         noLoop();
       }
    } 
 }