float t, px, py;

void setup() {
  size(800, 600);
  t = 0;
  px = fx(t);
  py = fy(t);
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

float fy( float t ) {
  return sin(t) * t*10;
}

float fx( float t ) {
  return cos(t) * t*10;
}


void draw() {
  translate( width/2, height/2); 
  scale(1, -1);
  uklad();

  if (t<=10*PI) {
    float y = fy(t) ;
    float x = fx(t) ;
    strokeWeight( 5 );
    point( x, y );
    strokeWeight( 1 );
    line( px, py, x, y);
    px = x;
    py = y;
    t = t + 0.01 ;
  } else {
    background( 200 );
    t = 0;
    px = fx(t);
    py = fy(t);
  }
}
