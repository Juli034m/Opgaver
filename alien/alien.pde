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



tegna(0,0);

tegna(300,0);

tegna(0,300);
  
tegna(300,300);

}

void frameFunction(int x, int y ){
  rect(10+x,10+y,280,280);
}

  void hovedf(int x,int y)
{  
// make head and color white
  fill(255,255,255);
  circle(150+x,75+y,100);
  
  // make eys and color black
  fill(0,0,0);
  ellipse(125+x, 75+y, 25, 50);
  ellipse(175+x, 75+y, 25, 50);
}  
  
  void bodyf(int x,int y)
{
 // make body and color black
  fill(0,0,0);
  rect(125+x,120+y,50,100);
  
 //make legs and thick
  strokeWeight(5);
  line(125+x,220+y,110+x,250+y);
  line(175+x,220+y,195+x,250+y);
    strokeWeight(1);

}
 
void tegna(int x,int y){
 
 hovedf(x,y);
  bodyf(x,y);
  
  textSize(32);
  text("Alie", 120+x, 270+y);

}
