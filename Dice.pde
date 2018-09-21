


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
	int diceRoll;
	
	Die(int x, int y) 
	{
		
		myX = x;
		myY = y;
		roll();

	}

	void roll()
	{
		if(Math.random() < (1/6)){
			diceRoll = 1;
		}else if(Math.random() < (2/6)){
			diceRoll = 2;
		}else if(Math.random() < (3/6)){
			diceRoll = 3;
		}else if(Math.random() < (4/6)) {
			diceRoll = 4;
		}else if(Math.random() < (5/6)) {
			diceRoll = 5;
		}else{
			diceRoll = 6;
	}			
}


	void show()
	{
		fill((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
		rect(myX,myY,20,20,7);
		fill(0);
		if(diceRoll == 1){
			ellipse(myX+10,myY+10,5,5);
		}else if(diceRoll == 2) {
			ellipse(myX+7,myY+10,5,5);
			ellipse(myX+14,myY+10,5,5);
		}else if(diceRoll == 3) {

		}else if(diceRoll == 4) {

		}else if(diceRoll == 5) {

		}else if(diceRoll == 6) {

		}
	}
}


