  int exploded;

class Alien {
  Bomb theBomb;
  int x;        //xposition 
  int y;        //yposition
  int count;    //count
  int dx;       //speed
  boolean dead;
  int fCount;  //frame counter
  int exploded;
  boolean jelly=false;

  Alien(int xpos, int ypos) {
    dx=1;  //speed value
    count=50;  //count ==height of image
    x=xpos;  
    y=ypos;
    fCount = 30; //initialise frame counter
  }

  void alienDraw() {
    if(dead!=true)
    {
        image(myimage, x, y, 50, 50);
        //generate a random number and if theres no bomb
         if((((int)random(1000))==1)&&(theBomb==null))
            {
              theBomb = new Bomb (x,y);
            }
            
            //if there is a bomb, move and draw
            if(theBomb!=null){
            theBomb.move();
            theBomb.draw();
            theBomb.collide(thePlayer);
            
            
            //if the bomb goes offscreen
            if(theBomb.y>SCREENY)
            theBomb=null;
        }
    }
    else if((dead==true)&&(fCount>0)&&(jelly==false))  
     {
        image(myimage2, x, y, 50, 50);
        fCount--;      //frame counter decrements from 30 and then causes the image to disappear
        println(fCount + "i");
        if(fCount==1)
        {
          jelly=true;
        }
     }
  }
  
  void explode(){
    if(!dead)
    {
      dead=true;
      leftoverAliens--;
      println(leftoverAliens);
      if(leftoverAliens==0)
      {
           text("You win!",280,250);
           noLoop();
      }
    }
    
  }

    void alienMove() {
      if (((x+BOXWIDTH)<SCREENX)&&(x>0)) {    //l to r
        x=x+dx;
      }
      if ((x+50)>=SCREENX) {  //image drop
        y++;
        count--;
        if (count==0)             //r to l
        {  
          dx=dx-2;              //speed=-2;
          x=(SCREENX-BOXWIDTH-1);
          count=50;            //reset count
        }
      }
      if (x<=0)  //image drop
      {
        y++;
        count--;
        if (count==0)          //l to r
        {
          dx=dx+2;         //speed=2
          x=1;
          count=50;          //reset count
        }
      }
    }
  }