	int sizeX = 400;
	int sizeY = 400;
public void setup()
{
	size(400,400);

}
public void draw()
{
	sierpinski(sizeX/4,sizeY/2,sizeX/2);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len<=20)
		triangle(x, y, x+len/2, y-len, x+len, y);
	else {
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}
