void setup(){
  size(500,500);
  background(200,200,200);
}

//New project; ellipse making a bigger ellipse path, but tilted diagonally.
//Use 0.1, 10, 100, 200
float x = 0;
float x2 = 0;
float y = 0;
float c = .01;
float ex = 0;
float ey = 0;
float ey2 = 0;
float ey3 = 0;

void draw(){
 // background(255,255,255);
  x = x + c;
  x2 = x2 + (c * 200);
  y = y + c;
  ex = (width/2) + 100 * sin(x);
  ey = (height/2) + 100 * cos(y);
  ey2 = (height/4) + 50 * cos(y);
  ey3 = (3 * height / 4) + 50 * cos(y);
  fill(0,125 + 125 * sin(x), 125 + 125 * sin(x));
  //ellipse(ex, ey, 5, 5);
  //ellipse(ex + 30 * (1 / sin(x2)), ey - 30 * cos(x2), 5, 5);
 // ellipse(ex + 30 * sin(x2), ey - 30 * (1 / cos(x2)), 5, 5);
  ellipse(ex + 30 * (1 / sin(x2)), ey - 30 * (1 / cos(x2)), 5, 5);
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}
