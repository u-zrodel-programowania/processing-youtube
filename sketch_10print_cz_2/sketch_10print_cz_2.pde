int rozmiar;
int dx, dy;

void setup()
{
  frameRate(50);
  size( 350, 300 );
  rozmiar = 20;
  dx = 0;
  dy = 0;
  background( 151 ) ;
}

void draw()
{
  int los = (int)random(1, 101); // <1,100>
  
  stroke( random(256), random(256), random(256) );
  strokeWeight( random(1,10) );
  
  if ( los > 50 )
  {
    line( 0+dx, 0+dy, rozmiar+dx, rozmiar+dy );
  } else 
  {
    line( rozmiar+dx, 0+dy, 0+dx, rozmiar+dy );
  }
  dx = dx + rozmiar; 
  if ( dx >= width )
  {
    dx = 0;
    dy = dy + rozmiar;
  }
  
  if( dy >= height )
  {
    dx = 0;
    dy = 0;
    background( random(256) ) ;
  }
  
  
  
  
  
  
} // koniec draw()