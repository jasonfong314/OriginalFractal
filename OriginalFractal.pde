public void setup()
{
  size (500, 500);
    rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(250, 250, 480);
}
public void myFractal( int x, int y, int size)
{
  fill(255, (int)(Math.random()*240),(int)(Math.random()*240));
 //triangle (x, y, x+180, y+180, x+50, y+50);
  rect (x, y, size, size);
  if (size>10)
  {
    myFractal(x-size/2, y, size/2);
    myFractal(x+size/3, y, size/4);
    myFractal(x, y-size/2, size/2);
    myFractal(x, y+size/3, size/4);
  }
}
