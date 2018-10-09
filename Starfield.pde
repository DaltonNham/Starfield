NormalParticle [] poof;
void setup()
{
	size(300,300);
	poof = new NormalParticle[50];
	for (int i=0; i<poof.length; i++)
	{
		poof[i] = new NormalParticle();
	}
}
void draw()
{
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
		normX = 150;
		normY = 150;
		normAngle = ((double)(Math.random()*(2*Math.PI)));
		normSpeed = ((double)(Math.random()*10));
		normColor = color(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
	}
	void move()
	{
		normX = Math.cos(normAngle) * normSpeed;
		normY = Math.sin(normAngle) * normSpeed;
	}
	void show()
	{
		fill(normColor);
		ellipse(normX, normY, 10 , 10);
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

