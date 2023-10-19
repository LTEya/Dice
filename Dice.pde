Die bob;
Die newBob;
int dotsValue =0;
int dnums;
void setup() {
  size(600, 600);
  noLoop();
  bob = new Die(150, 150);
}
void draw()
{
  background (255, 45, 45);
  strokeWeight(5);
  fill(0, 255, 0);
  dotsValue = 0;
  for (int y=100; y<=550; y+=125) {
    for (int x=100; x<=550; x+=125) {
      Die newBob = new Die(x, y);
      newBob.roll();
      newBob.show();
    }
  }
  fill(255);
  textSize(15);
  text("Total dots: " + dotsValue, 25, 550 );
}
void mousePressed()
{
  redraw();
}

class Die
{
  int myX;
  int myY;
  Die(int x, int y) {
    dnums = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  void roll()
  {
    for (int i=0; i<=16;i++){
        dotsValue=dnums+dotsValue;
    }
  }
  void show() {
    strokeWeight(10);
    fill(125,150,200);
    rect(myX-50, myY-50, 100, 100);
    if (dnums == 1) {
      fill (100);
      ellipse (myX, myY, 10, 10);
    } else if (dnums == 2) {
      fill (255);
      ellipse(myX-25, myY, 10, 10);
      ellipse(myX+25, myY, 10, 10);
    } else if (dnums == 3) {
      fill(200,32,4);
      ellipse(myX-25, myY-25, 10, 10);
      ellipse(myX+25, myY-25, 10, 10);
      ellipse(myX, myY+25, 10, 10);
    } else if (dnums == 4) {
      fill(100);
      ellipse(myX-25, myY+25, 10, 10);
      ellipse(myX-25, myY-25, 10, 10);
      ellipse(myX+25, myY-25, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (dnums == 5) {
      fill(100);
      ellipse(myX-25, myY+25, 10, 10);
      ellipse(myX-25, myY-25, 10, 10);
      ellipse(myX+25, myY-25, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX, myY, 10, 10);
    } else if (dnums==6) {
      fill(100);
      ellipse(myX-25, myY, 10, 10);
      ellipse(myX+25, myY, 10, 10);
      ellipse(myX-25, myY+25, 10, 10);
      ellipse(myX-25, myY-25, 10, 10);
      ellipse(myX+25, myY-25, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    }
  }
}
