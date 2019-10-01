void setup()
{
  size(1000,1000);
	noLoop();
}
Die one;
void draw()
{
	clear();
  int number = (int)(Math.random()*5 + 1);
  one = new Die(100,100, number);
  one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
	int i = 1;
	Die(int x, int y, int number)
	{
		myX = x;
    myY= y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
  int x = myX;
  for(int i = 100; i < 900; i += 100) {
		rect(x, myY, 50,50, 5);
    int y = myY;
      for(int s = 100; s < 900; s += 100){
       rect(x, y, 50,50, 5);
       y += 100;
      }
    x += 100;
  }
    fill(0,0,0);
    if(i == 1){
      circle(myX + 25, myY + 25, 10);
  	};
  }
}
