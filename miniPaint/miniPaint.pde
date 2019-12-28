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
  if( (key == 'h' ) && (h < 360) ) h++;
  if( (key == 'H' ) && (h > 0)   ) h--;
  if( (key == 's' ) && (s < 100) ) s++;
  if( (key == 'S' ) && (s > 0)   ) s--;
  if( (key == 'b' ) && (b < 100) ) b++;
  if( (key == 'B' ) && (b > 0)   ) b--;}
