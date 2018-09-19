Die one = new Die(50,50);

void setup()
{
  noLoop();
  size(300,300);
}
void draw()
{
  one.show();
  one.roll(1);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll(int number)
  {
    if(number == 1){
      fill(0);
      ellipse(74,76,10,10);
    }
    if(number == 2){
      fill(0);
      ellipse();
    }
    
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50, 7);
  }
}
