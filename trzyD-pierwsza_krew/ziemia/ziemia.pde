float angle; 
PImage image;
PShape earth;

void setup() {
  size(640, 480, P3D);
  image = loadImage("ziemia.jpg");
  noStroke();
  earth = createShape( SPHERE , 200 ); 
  earth.setTexture( image );
  
}

void draw() {
  noStroke();
  background( #B019FC );
  angle = angle + 0.01;
  
  rect(100, 100, 60, 89 );
  translate( width/2, height/2 );
  rotateY( angle );
  lights();
  
  shape( earth );
  
  rect(100, 100, 60, 89 );
  translate( 300, 0 );
  box( 50, 150, 50  );
}