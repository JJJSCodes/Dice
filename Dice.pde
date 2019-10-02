void setup()
{
  size(1000,1000);
	noLoop();
}
Die one;
void draw()
{
	clear();
  one = new Die(100,100);
  one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
  int total = 0;
  int one;
  int two;
  int three;
  int four;
  int five;
  int six;
	Die(int x, int y)
	{
		myX = x;
    myY= y;
	}
	void show()
	{
  int x = myX;
  for(int i = 100; i < 900; i += 100) {
    int y = myY;
      for(int s = 100; s < 900; s += 100){
       int number = (int)(Math.random()*6 + 1);
       fill(255,255,255);
       rect(x, y, 50,50, 5);
       fill(0, 0, 0);
       switch (number) {
         case 1:
          circle(x + 25, y + 25, 10);
          one += 1;
          break;
         case 2:
           circle(x+12.5, y + 12.5, 10);
           circle(x+37.5, y + 37.5, 10);
           two += 1;
           break;
         case 3:
           circle(x+12.5, y + 12.5, 10);
           circle(x+25, y + 25, 10);
           circle(x+37.5, y + 37.5, 10);
           three += 1;
           break;
         case 4:
           circle(x+12.5, y + 12.5, 10);
           circle(x+37.5, y + 12.5, 10);
           circle(x+37.5, y + 37.5, 10);
           circle(x+12.5, y + 37.5, 10);
           four += 1;
           break;
         case 5:
           circle(x+12.5, y + 12.5, 10);
           circle(x+37.5, y + 12.5, 10);
           circle(x+25, y + 25, 10);
           circle(x+37.5, y + 37.5, 10);
           circle(x+12.5, y + 37.5, 10);
           five += 1;
           break;
         case 6:
           circle(x+12.5, y + 12.5, 10);
           circle(x+37.5, y + 12.5, 10);
           circle(x+37.5, y + 37.5, 10);
           circle(x+12.5, y + 25, 10);
           circle(x+37.5, y + 25, 10);
           circle(x+12.5, y + 37.5, 10);
           six += 1;
           break;
       }
       total += number;
       y += 100;
      }
    x += 100;
  }
  textSize(25);
  fill(255,255,255);
  text("Total " + total, 450, 900);
  text("# of Integers: One - " + one + " Two - " + two + " Three - " + three + " Four - " + four + " Five - " + five + " Six - " + six , 25, 925);
  }
}
