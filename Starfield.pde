NormalParticle [] poof;
Particle [] puff = new Particle[1];;
void setup()
{
	frameRate(15);
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
		for (int j = 0; j<puff.length; j++)
		{
			if (j <= 500)
			{
				puff[j] = new OddballParticle();
			}
			puff[j].move();
			puff[j].show();
		}
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
		normAngle = (Math.random()*5)*(Math.PI);
		normSpeed = (Math.PI*2*Math.random());
		normColor = color(255,255,((int)(Math.random()*156)+100));
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
	public void move();
	public void show();

}
class OddballParticle implements Particle //uses an interface
{
	double oddX, oddY, oddVert, oddHorz;
	OddballParticle ()
	{
		oddX = 250;
		oddY = 250;
		oddVert = ((double)(Math.random()*11)-5);
		oddHorz = ((double)(Math.random()*11)-5);
	}
	public void move()
	{
		oddX = oddX + oddHorz;
		oddY = oddY + oddVert;
	}
	public void show()
	{
		fill(255,0,0);
		ellipse((float)oddX, (float)oddY, 100 , 100);
	}
}
class JumboParticle extends Parti//uses inheritance
{
	void show()
	{
		ellipse()
	}
}

