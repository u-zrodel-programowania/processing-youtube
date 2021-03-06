/* 
*  Ilustracja do odcinka: https://www.youtube.com/watch?v=vsgKWX1lRaw
*  Inspirowane niesamowitym Danem Shiffmanem z kanału The Coding Train
*  Oparte o jego książkę The Nature Of Code (https://natureofcode.com/book/)
*  Wersja z dnia 20. grudnia 2019 r. 
*  Autor: Przemysław Adam Śmiejek z kanału U źródeł programowania
*  Zachęcam do wykorzystywania i inspirowania (się i innych)
*/
void setup() {
  size(800, 600);
  colorMode( HSB, 255 );
}

void branch(float len, float alpha) {
  float w = map( len, 120, 1, 10, 1);
  strokeWeight( w );
  float b = map( len, 120, 1, 0, 230);
  stroke( 88, 255, b);
  line(0, 0, 0, -len);
  translate(0, -len);
  len = len * 0.6; // len *= 0.6;
  if (len > 1) {
    //gałąź w prawo
    pushMatrix();
    rotate(alpha);
    branch(len, alpha);
    popMatrix();

    // gałąź w lewo
    pushMatrix();
    rotate(-alpha);
    branch(len, alpha);
    popMatrix();
  } // koniec if
}

void draw() {
  background( 200 ); 
  //pień
  translate(width/2, height);
  stroke( 0 );
  strokeWeight( 10 );
  line(0, 0, 0, -50);
  translate(0, -50);
  float alpha = map(mouseX, 0, width, 0, PI/2);
  branch(100, alpha);
}
