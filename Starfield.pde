Particle [] poof;
void setup()
{
	frameRate(15);
	size(500,500);
	poof = new Particle[500];
	for (int i=0; i<poof.length; i++)
	{
		poof[i] = new NormalParticle();
	}
	poof[0] = new OddballParticle();
	poof[499] = new JumboParticle();
}
void draw()
{
	background(0);
	for (int i = 0; i<poof.length; i++)
 	{
 		poof[i].show();
 		poof[i].move();
 	}
}
class NormalParticle implements Particle
{
	double myX, myY, mySpeed, myAngle;
	int myColor;
	NormalParticle()
	{
		myX = 250;
		myY = 250;
		myAngle = (Math.random()*5)*(Math.PI);
		mySpeed = (Math.PI*2*Math.random());
		myColor = color(255,255,((int)(Math.random()*156)+100));
	}
	public void move()
	{
		myX = myX + (Math.cos(myAngle) * mySpeed);
		myY = myY + (Math.sin(myAngle) * mySpeed);
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX, (float)myY, 5 , 5);
	}
}
interface Particle
{
	public void move();
	public void show();

}
class OddballParticle implements Particle //uses an interface
{
	double myX, myY;
	int myColor;
	OddballParticle()
	{
		myX = 250;
		myY = 250;
		myColor = color(255,0,0);
	}
	public void move()
	{
		myX = myX + (int)((Math.random()*11)-5);
		myY = myY + (int)((Math.random()*11)-5);
	}
	public void show()
	{
		fill(myColor);
		rect((float)myX, (float)myY, 10 , 10);
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	public void show()
	{
		ellipse((float)myX, (float)myY, 20, 20);
	}
}

