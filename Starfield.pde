NormalParticle [] poof;
void setup()
{
	frameRate(60);
	size(500,500);
	poof = new NormalParticle[500];
	for (int i=0; i<poof.length; i++)
	{
		poof[i] = new NormalParticle();
	}
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
class NormalParticle
{
	double normX, normY, normSpeed, normAngle;
	int normColor;
	NormalParticle()
	{
		normX = 250;
		normY = 250;
		normAngle = (Math.random()*10)*(Math.PI);
		normSpeed = (Math.PI*2*Math.random());
		normColor = color(((int)(Math.random()*156)+100),((int)(Math.random()*156)+100),((int)(Math.random()*156)+100));
	}
	void move()
	{
		normX = normX + (Math.cos(normAngle) * normSpeed);
		normY = normY + (Math.sin(normAngle) * normSpeed);
	}
	void show()
	{
		fill(normColor);
		ellipse((float)normX, (float)normY, 5 , 5);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

