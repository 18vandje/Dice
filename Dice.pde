//Dice, Dice, Baby by Jess van de Ven from StArTeR cOdE!!!

Die firstborn;
int eyeball; //number displayed on dice
int x=20;    //starting x coordinate of the first dice
int y=20;    //starting y coordinate of the first dice
int dx, dy;
color yummy, yummyy, yummyyy;  
color derrier;
int rx;
int ry;
int value;    //total value of die faces
void setup() {
  size(300, 300);   //sets size of window
  noLoop();
}

void draw() {
  int yummy = (int)(Math.random()*256);
  background(255);
  Die firstborn;
  firstborn = new Die(20, 20);
  if (keyPressed==true) {
    background(0);
    for (int h=0; h<3; h++) {            //sets up 3 rows of 3 die
      for (int g=0; g<3; g++) {
        fill(255, 255, 255);
        firstborn.roll();
        firstborn.showNew();
        value=value+eyeball;             //counts value of faces on die

        rx=rx+40; //changes x coord
      }
      x=20;       //resets starting x and y coords
      y=y+40;
    }
    textSize(60);
    fill(yummy,yummy,yummy);      //random grayscale color
    text("= "+value, 10, 180); 
    textSize(18);
    fill(255, 255, 255);
  }
  if (keyPressed!=true) {
    for (int h=0; h<3; h++) {      //sets up 3 rows of 3 die
      for (int g=0; g<3; g++) {
        fill(255, 255, 255);
        firstborn.roll();
        firstborn.show();
        value=value+eyeball;

        x=x+40; //changes x coord
      }
      x=20;      //resets starting x and y coords
      y=y+40;
    }
    textSize(32);
    fill(0, 102, 153);
    text("= "+value, 150, 150);
    textSize(18);
    fill(255, 255, 255);
  }
}

void mousePressed() {
  x=20; 
  y=20;
  value=0;
  redraw();
}

void keyPressed() {
  x=(int)(Math.random()*200);
  y=(int)(Math.random()*200);
  dx=x;        //keeps die on screen via coords within the window
  dy=y;
  value =0;
  redraw();
}

class Die { //models one single dice cube

  //variable declarations here


  Die(int x, int y) { //constructor
    //variable initializations here
  }

  void roll() {
    //your code here
    eyeball=(int)(Math.random()*6)+1;
  }

  void show() {
    int yummy = (int)(Math.random()*256);
    int yummyy = (int)(Math.random()*256);
    int yummyyy = (int)(Math.random()*256);

    stroke(yummy, yummyy, yummyyy);        //random color
    rect(x, y, 30, 30, 5);               //rectangle (dice) with cooresponding number of dots
    if (eyeball==1) {
      dx=x+15; 
      dy=y+15;
      ellipse(dx, dy, 3, 3);
    } else if (eyeball==2) {
      dx=x+5; 
      dy=y+5;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+20, dy+20, 3, 3);
    } else if (eyeball == 3) {
      dx=x+10; 
      dy=y+10;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+7.5, dy+7.5, 3, 3);
      ellipse(dx+14, dy+14, 3, 3);
    } else if (eyeball==4) {
      dx=x+5; 
      dy=y+5;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+20, dy, 3, 3);
      ellipse(dx, dy+20, 3, 3);
      ellipse(dx+20, dy+20, 3, 3);
    } else if (eyeball==5) {
      dx=x+5; 
      dy=y+5;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+20, dy, 3, 3);
      ellipse(dx, dy+20, 3, 3);
      ellipse(dx+20, dy+20, 3, 3);
      ellipse(dx+10, dy+10, 3, 3);
    } else if (eyeball==6) {
      dx=x+5; 
      dy=y+8;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+20, dy, 3, 3);
      ellipse(dx, dy+16, 3, 3);
      ellipse(dx+20, dy+16, 3, 3);
      ellipse(dx+10, dy, 3, 3);
      ellipse(dx+10, dy+16, 3, 3);
    }
  }
  void showNew() {
    stroke(0);
    rx=(int)(Math.random()*180);
    rect(rx, y, 30, 30, 5);
    if (eyeball==1) {
      dx=rx+15; 
      dy=y+15;
      ellipse(dx, dy, 3, 3);
    } else if (eyeball==2) {
      dx=rx+5; 
      dy=y+5;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+20, dy+20, 3, 3);
    } else if (eyeball == 3) {
      dx=rx+10; 
      dy=y+10;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+7.5, dy+7.5, 3, 3);
      ellipse(dx+14, dy+14, 3, 3);
    } else if (eyeball==4) {
      dx=rx+5; 
      dy=y+5;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+20, dy, 3, 3);
      ellipse(dx, dy+20, 3, 3);
      ellipse(dx+20, dy+20, 3, 3);
    } else if (eyeball==5) {
      dx=rx+5; 
      dy=y+5;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+20, dy, 3, 3);
      ellipse(dx, dy+20, 3, 3);
      ellipse(dx+20, dy+20, 3, 3);
      ellipse(dx+10, dy+10, 3, 3);
    } else if (eyeball==6) {
      dx=rx+5; 
      dy=y+8;
      ellipse(dx, dy, 3, 3);
      ellipse(dx+20, dy, 3, 3);
      ellipse(dx, dy+16, 3, 3);
      ellipse(dx+20, dy+16, 3, 3);
      ellipse(dx+10, dy, 3, 3);
      ellipse(dx+10, dy+16, 3, 3);
    }
  }
}
