int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  strokeWeight(5);
  background(0,0,0);
  stroke(255,0,0);
  frameRate(125);
}

void draw()
{
  fill(0,0,0,15); 
rect(0,0,300,300);
    endX = startX +(int)(Math.random()*7);
    endY = startY +(int)(Math.random()*19)-9;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    //line(150,150,5,5);
  }

void mousePressed()
{
startX = 0;
startY = 150;
endX = 0;
endY = 150; 
}

