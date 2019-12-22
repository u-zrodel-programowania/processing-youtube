
void setup() {
  size( 800, 600 );
}

ArrayList<Sniezynka> ss = new ArrayList<Sniezynka>();

void draw() {
  background( 200 );
  Sniezynka s = new Sniezynka();
  ss.add( s );

  for (int i = 0; i < ss.size(); i++) {
    ss.get(i).draw();
    ss.get(i).down();
  }

  for (int i = ss.size()-1; i >=0 ; i--) {
     if (ss.get(i).getY()  > height -10 )
        ss.remove(i);
  }
}
