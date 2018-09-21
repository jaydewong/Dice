

void setup()
{
  noLoop();
  size(300,300);
}
void draw()
{
    Die one = new Die(50, 50);
    one.show();
    one.roll((int)(Math.random()*6 + 1));
  
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
      ellipse(myX + 25,myY + 25,10,10);
    }
    if(number == 2){
      fill(0);
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 12,myY + 12,10,10); // top left
    }
    if(number == 3){
      fill(0);
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 25,myY + 25,10,10); //center
      ellipse(myX + 12,myY + 12,10,10); // top left
    }
    if(number == 4){
      fill(0);
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 38,myY + 12,10,10);// top right
      ellipse(myX + 12,myY + 38,10,10);// bottom left
      ellipse(myX + 12,myY + 12,10,10); // top left
    }
    if(number == 5){
      fill(0);
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 38,myY + 12,10,10);// top right
      ellipse(myX + 25,myY + 25,10,10);// center
      ellipse(myX + 12,myY + 38,10,10);// bottom left
      ellipse(myX + 12,myY + 12,10,10); // top left
    }
    if(number == 6){
      fill(0);
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 38,myY + 12,10,10);// top right
      ellipse(myX + 38,myY + 25,10,10);// center right
      ellipse(myX + 12,myY + 25,10,10);// center left
      ellipse(myX + 12,myY + 38,10,10);// bottom left
      ellipse(myX + 12,myY + 12,10,10); // top left
    }
    
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50, 7);
  }
}
