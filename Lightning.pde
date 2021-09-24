int startX = 350;
int startY = 0;
int endX = 0;
int endY = 800;

void setup() {
  size(700, 700);
  strokeWeight(6);
  background(0, 0, 0);
}

void draw() {
  fill(0, 0, 0, 19);
  rect(0, 0, 699, 699);
  stroke((int)(Math.random()*229)+80, (int)(Math.random()*41)+10, (int)(Math.random()*12)+12, (int)(Math.random()*100)+66);
  while (startY <= 700) {
    endX = startX + (int)(Math.random()*30)-15;
    endY = startY + (int)(Math.random()*19);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed() {
  startX = (int)(Math.random()*700);
  startY = -10;
  endX = 0;
  endY = 0;
}
