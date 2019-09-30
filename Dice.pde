void setup()
{
  size(500,500);
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
	int i = 1;
	Die(int x, int y)
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
		rect(myX, myY, 50,50, 5);
    fill(0,0,0);
    if(i == 1){
      circle(myX + 25, myY + 25, 10);
  	};
  }
}
