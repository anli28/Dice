


void setup()
{
	noLoop();
	size(990,750);
}
void draw()
{
	background(0);
	for(int y = 10; y < 725; y = y + 25){
		for(int x = 10; x < 975; x = x + 25){
		Die dice = new Die(x,y);
		dice.show();
		}
	}
}

void mousePressed()
{
	redraw();
}


class Die 
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
		double randomRoll = Math.random();
		if(randomRoll < (0.1666667)){
			diceRoll = 1;
		}else if(randomRoll < (0.33333333)){
			diceRoll = 2;
		}else if(randomRoll < (0.5)){
			diceRoll = 3;
		}else if(randomRoll < (0.666666667)) {
			diceRoll = 4;
		}else if(randomRoll < (0.83333333)) {
			diceRoll = 5;
		}else{
			diceRoll = 6;
	}			
}


	void show()
	{
		fill((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
		rect(myX,myY,20,20,7);
		fill((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
		stroke((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
		if(diceRoll == 1){
			ellipse(myX+10,myY+10,5,5);
		}else if(diceRoll == 2) {
			ellipse(myX+7,myY+10,5,5);
			ellipse(myX+14,myY+10,5,5);
		}else if(diceRoll == 3) {
			ellipse(myX+5,myY+15,5,5);
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+15,myY+5,5,5);
		}else if(diceRoll == 4) {
			ellipse(myX+7,myY+15,5,5);
			ellipse(myX+14,myY+15,5,5);
			ellipse(myX+7,myY+5,5,5);
			ellipse(myX+14,myY+5,5,5);
		}else if(diceRoll == 5) {
			ellipse(myX+5,myY+15,5,5);
			ellipse(myX+16,myY+15,5,5);
			ellipse(myX+5,myY+5,5,5);
			ellipse(myX+16,myY+5,5,5);
			ellipse(myX+10,myY+10,5,5);
		}else if(diceRoll == 6) {
			ellipse(myX+7,myY+16,5,5);
			ellipse(myX+7,myY+10,5,5);
			ellipse(myX+7,myY+4,5,5);
			ellipse(myX+14,myY+16,5,5);
			ellipse(myX+14,myY+10,5,5);
			ellipse(myX+14,myY+4,5,5);
		}
	}
}


