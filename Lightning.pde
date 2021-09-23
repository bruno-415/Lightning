int startX = 100;
int startY = 200;
int endX = 100;
int endY = 200;
int red;
int green;
int blue;
int yodaXShift = -35;
int yodaYShift = -20;
int blueFlicker;

void setup()
{
  size(500,300);
  background(0,40,50);
  strokeWeight(1);
  
}
void draw()
{
  //darth sidious
  noStroke();
  fill(0, 0, 0 + blueFlicker/3); //black cloak
  quad(60,130,100,130,110,240,50,240);
  fill(249,232,195 + blueFlicker); //face and hand
  ellipse(80,150,25,25);
  ellipse(105,200,10,10);
  fill(138,43,11 + blueFlicker); //eyes and mouth
  ellipse(78,148,2,2);
  ellipse(84,148,2,2);
  ellipse(82,156,14,12);
  
  //yoda
  fill(116, 156, 84 + blueFlicker); //yoda green
  ellipse(470 + yodaXShift, 210 + yodaYShift, 30, 20);
  triangle(455 + yodaXShift, 210 + yodaYShift, 460 + yodaXShift, 205+yodaYShift, 445 + yodaXShift, 205 + yodaYShift);
  triangle(485 + yodaXShift, 210 + yodaYShift, 480 + yodaXShift, 205 + yodaYShift, 495 + yodaXShift, 205 + yodaYShift);
  fill(193, 144, 97 + blueFlicker/2); //brown coat
  quad(460 + yodaXShift, 220 + yodaYShift, 480 + yodaXShift, 220 + yodaYShift, 490 + yodaXShift, 260 + yodaYShift, 450 + yodaXShift, 260 + yodaYShift);
  fill(0); //black eyes
  ellipse(463 + yodaXShift, 208 + yodaYShift, 2, 2);
  ellipse(473 + yodaXShift, 208 + yodaYShift, 2, 2);
  fill(0, 256, 0 + blueFlicker); //green blade
  quad(440 + yodaXShift, 185 + yodaYShift, 443 + yodaXShift, 184 + yodaYShift, 452 + yodaXShift,233 + yodaYShift, 449 + yodaXShift, 234 + yodaYShift);
  fill(160, 160, 160 + blueFlicker); //silver handle
  quad(449 + yodaXShift, 233 + yodaYShift, 452 + yodaXShift, 232 + yodaYShift, 454 + yodaXShift, 240 + yodaYShift, 451 + yodaXShift, 241 + yodaYShift);
  
  //lightning
  red = (int)(Math.random()*156+100);
  green = (int)(Math.random()*56+200);
  blue = 255;
  stroke(red,green,blue);
  fill(0,0,40,5);
  rect(-50,-50,550,550);
  if (mouseButton == LEFT) {
    Lightning(startX, startY, endX, endY);
    blueFlicker = (int)(Math.random()*100);
  }
  else
    return;
}
/*void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}*/

void Lightning(int _startX, int _startY, int _endX, int _endY) {
  while(_endX < 400) {
    _endX = _startX + (int)(Math.random()*20);
    _endY = _startY + (int)(Math.random()*10-5);
    line(_startX,_startY,_endX,_endY);
    _startX = _endX;
    _startY = _endY;
  }
    _startX = 0;
    _startY = 150;
    _endX = 0;
    _endY = 150;
}
