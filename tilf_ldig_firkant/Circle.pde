  
class Circle {
  // klassens attributter/ tilstand
  float x, y, ex; 
  float c1, c2, c3;
  
  //konstroktøren
  Circle() {
   x = random(1920);
   y = random(1080);
   ex = random(100);
   c1 = random(255);
   c2 = random(255);
   c3 = random(255);
   
  }

  // klassens metoder

  // tegn Cirkel på canvas
  void drawCircle() {
    fill(c1, c2, c3);
    circle(x, y, ex);
    fill(255, 255, 255);
    
  }
  
}
