Die bob;
Die newBob;
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
  for (int y=100; y<=550; y+=125) {
    for (int x=100; x<=550; x+=125) {
      Die newBob = new Die(x, y);
      newBob.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die
{
  int dnum;
  int myX;
  int myY;
  int dotsValue =0;
  Die(int x, int y) {
    dnum = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  void roll()
  {
    if(dnum<=6) dotsValue +=dnum;
    System.out.print(dotsValue);
    textSize(15);
    text("Total dots: " + dotsValue, 25, 520 );
    
  }
  void show() {
    strokeWeight(10);
    fill(125,150,200);
    rect(myX-50, myY-50, 100, 100);
    if (dnum == 1) {
      fill (100);
      ellipse (myX, myY, 10, 10);
    } else if (dnum == 2) {
      fill (255);
      ellipse(myX-25, myY, 10, 10);
      ellipse(myX+25, myY, 10, 10);
    } else if (dnum == 3) {
      fill(200,32,4);
      ellipse(myX-25, myY-25, 10, 10);
      ellipse(myX+25, myY-25, 10, 10);
      ellipse(myX, myY+25, 10, 10);
    } else if (dnum == 4) {
      fill(100);
      ellipse(myX-25, myY+25, 10, 10);
      ellipse(myX-25, myY-25, 10, 10);
      ellipse(myX+25, myY-25, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (dnum == 5) {
      fill(100);
      ellipse(myX-25, myY+25, 10, 10);
      ellipse(myX-25, myY-25, 10, 10);
      ellipse(myX+25, myY-25, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX, myY, 10, 10);
    } else if (dnum==6) {
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


