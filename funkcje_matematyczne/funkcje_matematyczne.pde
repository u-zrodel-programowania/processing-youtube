float x, px, py;

void setup() {
  size(800, 600);
  x = -width/2;
  px = -width/2;
  py = f(px);
  frameRate(120);
}

void uklad() {
  strokeWeight(1);
  line(-width/2, 0, width/2, 0);
  line(0, -height/2, 0, height/2);
  for (int i=(-width/2); i<(width/2); i=i+50)
  {
    strokeWeight(5);
    point( i, 0 );
  }
  for (int i=(-height/2); i<(height/2); i=i+50)
  {
    strokeWeight(5);
    point( 0, i );
  }
}

float f( float x ) {
  return sin(x/100)*100;
}


void draw() {
  translate( width/2, height/2); 
  scale(1, -1);
  uklad();

  if (x<=width/2) {
    float y = f(x) ;
    strokeWeight( 5 );
    point( x, y );
    strokeWeight( 1 );
    line( px, py, x, y);
    px = x;
    py = y;
    x++;
  } else {
    background( 200 );
    x = -width/2;
    px = -width/2;
    py = f(px);
  }
}
