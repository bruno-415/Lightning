int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int red;
int green;
int blue;

void setup()
{
  size(300,300);
  background(0,0,40);
  strokeWeight(3);
}
void draw()
{
  red = (int)(Math.random()*156+100);
  green = (int)(Math.random()*56+200);
  blue = 255;
  stroke(red,green,blue);
  if (mouseButton == LEFT) {
    while(endX < 350) {
      endX = startX + (int)(Math.random()*10);
      endY = startY + (int)(Math.random()*15-7);
      line(startX,startY,endX,endY);
      startX = endX;
      startY = endY;
    }
    startX = 0;
    startY = 150;
    endX = 0;
    endY = 150;
    delay(50);
  }
}
/*void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}*/
