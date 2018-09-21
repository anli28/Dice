


void setup()
{
	noLoop();
	size(995,750);
}
void draw()
{
	for(int x = 10; x < 975; x = x + 25){
		for(int y = 10; y < 725; y = y + 25){
		Die dice = new Die(x,y);
		dice.show();
		}
	}
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	boolean diceRoll;
	
	Die(int x, int y) 
	{
		
		myX = x;
		myY = y;
		roll();

	}
	void roll()
	{
		if(Math.random() < 0.5){
			diceRoll = true;
		}else{
			diceRoll = false;
		}
	}
	void show()
	{
		fill((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
		rect(myX,myY,20,20,7);
	}
}

