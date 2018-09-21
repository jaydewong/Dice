int sum = 0;
void setup()
{
  noLoop();
  size(300,300);
}
void draw()
{
  background(200);
  for(int x = 30; x < 251; x = x+100){
    Die one = new Die(x, 20);
    one.show();
    one.roll((int)(Math.random()*6 + 1));
  }
  for(int x = 30; x < 251; x = x+100){
    Die two = new Die(x, 100);
    two.show();
    two.roll((int)(Math.random()*6 + 1));
  }
  for(int x = 30; x < 251; x = x+100){
    Die three= new Die(x, 180);
    three.show();
    three.roll((int)(Math.random()*6 + 1));
  }
  fill(0);
  text("The total is: " + sum, 115,280);
}
void mousePressed()
{
  background(200);
  sum = 0;
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
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 25,myY + 25,10,10);
      sum = sum + 1;
    }
    if(number == 2){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 12,myY + 12,10,10); // top left
      sum = sum + 2;
    }
    if(number == 3){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 25,myY + 25,10,10); //center
      ellipse(myX + 12,myY + 12,10,10); // top left
      sum = sum + 3;
    }
    if(number == 4){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 38,myY + 12,10,10);// top right
      ellipse(myX + 12,myY + 38,10,10);// bottom left
      ellipse(myX + 12,myY + 12,10,10); // top left
      sum = sum + 4;
    }
    if(number == 5){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 38,myY + 12,10,10);// top right
      ellipse(myX + 25,myY + 25,10,10);// center
      ellipse(myX + 12,myY + 38,10,10);// bottom left
      ellipse(myX + 12,myY + 12,10,10); // top left
      sum = sum + 5;
    }
    if(number == 6){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 38,myY + 38,10,10); // bottom right
      ellipse(myX + 38,myY + 12,10,10);// top right
      ellipse(myX + 38,myY + 25,10,10);// center right
      ellipse(myX + 12,myY + 25,10,10);// center left
      ellipse(myX + 12,myY + 38,10,10);// bottom left
      ellipse(myX + 12,myY + 12,10,10); // top left
      sum = sum + 6;
    }
    
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50, 7);
  }
}
