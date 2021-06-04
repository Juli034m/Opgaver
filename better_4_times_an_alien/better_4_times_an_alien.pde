
  // vigtigt at deklerere sine variabler til at starte med 
int x=125;
int y=120;

void setup(){
  size (600,600);
  noLoop();
}

void draw(){

  // make frame behind alien
  frameFunction(0,0);
  frameFunction(300,0);
  
  frameFunction(0,300);
  frameFunction(300,300);
  
  //divide screen i four squares
  line(300,0,300,600);//vertical line
  line (0,300,600,300); //Horizontal line
 
  //navngiver alien
  drawAlien(x,y,"Alia");
  drawAlien(x+300,y,"Alie");
  drawAlien(x,y+300,"Alio");
  drawAlien(x+300,y+300,"Aliy");
}
  // laver en funktion der tegner hele alien ved af kalde på fire andre funktioner 
void drawAlien(int x,int y, String n){  
  drawHead(x,y);
  drawBody(x,y);
  drawLegs(x,y);
  drawName(x,y,n);
} 
  
  
  // funktion til at tegne hovedet 
void drawHead(int x, int y){
  // make head and color white
  fill(255,255,255);
  circle(x+25,y-45,100);
  
  // make eys and color black
  fill(0,0,0);
  ellipse(x, y-45, 25, 50);
  ellipse(x+50, y-45, 25, 50);
}
  //funktion til at tegne kroppen 
void drawBody(int x, int y){
  // make body and color black
  fill(0,0,0);
  rect(x,y,50,100);  
}
  //funktion til at tegne benene
void drawLegs(int x, int y){
   //make legs and thick
  strokeWeight(5);
  line(x,y+100,x-15,y+130);
  line(x+50,y+100,x+70,y+130);
  strokeWeight(1);
}
  //funktion til at give dem navn 
  void drawName(int x, int y, String n){
  textSize(32);
  text(n, x, y+150);
}


void frameFunction(int x, int y){
  rect(10+x,10+y,280,280);
}
