// initiering af variablen f
Firkant f;
// initiering af variablen c
Circle c;
// initiering af x
int x = 0;

void setup() {
  //size (600, 400);
   fullScreen();
}

void draw() {

  if(x % 2 == 0){
  // initiering af objektet f
  f = new Firkant();

  // tegner firkanten på canvas
  f.drawFirkant();
  delay(10);
  }
  else{
   // initiering af objektet c
  c = new Circle();

  // tegner cirkler på canvas
  c.drawCircle();
  delay(10);
  }
  x=x+1;
}
