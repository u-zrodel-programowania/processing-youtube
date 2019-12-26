void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  background( 0, 0, 100 );
}

int w = 1; 
int h = 0;
int s = 0;
int b = 0; 

void draw() {
  fill( h, s, b);
  strokeWeight( w );
  rect(0, 0, 100, 100 );
  
  if ( mousePressed ) {
    stroke( h, s, b);
    strokeWeight( w ); 
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void keyPressed() {
  if( key == 'c' ) background( 0, 0, 100 );
  if( (key == 'w' ) && (w < 100) ) w++;
  if( (key == 'W' ) && (w > 1)   ) w--;
  if( (key == 'h' ) && (w < 360) ) h++;
  if( (key == 'H' ) && (w > 0)   ) h--;
  if( (key == 's' ) && (w < 100) ) s++;
  if( (key == 'S' ) && (w > 0)   ) s--;
  if( (key == 'b' ) && (w < 100) ) b++;
  if( (key == 'B' ) && (w > 0)   ) b--;}
