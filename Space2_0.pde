import ddf.minim.*;

Minim minim;
AudioPlayer background;

//Shields theShield;
Alien Alien;
Bullet theBullet;
Alien aliens[];
Bullet bullets[];
Player thePlayer;
Bomb theBomb;

int leftoverAliens;
int currentBullets;
PImage myimage;
PImage myimage2;
PImage bomb;
PImage myPlayer;
PImage space;
PFont myFont;


void settings() {
  size(SCREENX, SCREENY);
}

void setup() {
  myimage= loadImage("Space_Invaders_Alien.png");
  myimage2= loadImage("explode.png");  
  bomb = loadImage ("bomb.png");
  myPlayer = loadImage("ship.png");
  space = loadImage ("spacebackground.jpg");
  myFont = loadFont ("Phosphate-Solid-48.vlw");
  textFont (myFont);
  leftoverAliens=10;

 minim = new Minim(this);
 background = minim.loadFile("TheFatRat - Unity.mp3");
 background.play();
 
  //Create the player
  thePlayer = new Player(SCREENY-PLAYERHEIGHT);

  //Create the shield
 // theShield = new Shields();
  
  //Create empty array of aliens (10 elements)
  aliens= new Alien [10];         

  bullets = new Bullet [50];
  
  //Create the aliens
  init_array(aliens);
 
  init_bullets(bullets);
  //Set the framerate
  frameRate(100);
}

void draw() {
  background(space);
  
  //moves the player
  thePlayer.move(mouseX);
  thePlayer.draw();
  
  
  /*
  theShield.draw();
  theShield.bulletCollide(bullets, theShield);
  theShield.bombCollide(bombs);
  */

  //If there's a bullet, do so and so:
//  if (theBullet != null) {
  for(int i=0;i<bullets.length;i++)
  {
    bullets[i].move();
    bullets[i].collide(aliens);
    bullets[i].draw();
  }

  //moves the aliens
  for (int i=0; i<aliens.length; i++) {
    aliens[i].alienMove();
    aliens[i].alienDraw();
  } 
}

void init_bullets(Bullet bullet[]){
  for(int i =0; i <bullets.length;i++)
  {
    bullets[i]= new Bullet(-100,-100);
  }
}
  

//Create the actual alien array
void init_array(Alien aliens[]) {
  for (int i=0; i<aliens.length; i++) {
    aliens[i]= new Alien(1+i*(ALIEN_WIDTH+MARGIN), MARGIN);
  }
}

//Creates the bullets to shoot
void mousePressed()
{
    bullets[currentBullets]= new Bullet(mouseX, SCREENY-(PLAYERHEIGHT+BULLETHEIGHT));
    currentBullets++;
    if(currentBullets==50)
    {
      currentBullets=0;
    }
}