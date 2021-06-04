import controlP5.*;

ControlP5 cp5;
int myColor = 0;
int myColor1 = 0;
int myColor2 = 0;

int sliderValue = 100;
int sliderTicks1 = 100;

void setup() {
  size(700,400);
  noStroke();
  cp5 = new ControlP5(this);


  // add a vertical slider
  cp5.addSlider("red")
     .setPosition(10,10)
     .setSize(200,20)
     .setRange(0,256)
     .setValue(128)
     ;
  
  // reposition the Label for controller 'slider'
  cp5.getController("red")
    .getValueLabel()
    .align(ControlP5.LEFT, ControlP5
    .BOTTOM_OUTSIDE)
    .setPaddingX(0);
  cp5.getController("red")
  .getCaptionLabel()
  .align(ControlP5.RIGHT, ControlP5
  .BOTTOM_OUTSIDE)
  .setPaddingX(0);
 
 // add a vertical slider
  cp5.addSlider("green")
     .setPosition(10,50)
     .setSize(200,20)
     .setRange(0,256)
     .setValue(128)
     ;
  
  // reposition the Label for controller 'slider'
  cp5.getController("green")
    .getValueLabel()
    .align(ControlP5.LEFT, ControlP5
    .BOTTOM_OUTSIDE)
    .setPaddingX(0);
  cp5.getController("green")
  .getCaptionLabel()
  .align(ControlP5.RIGHT, ControlP5
  .BOTTOM_OUTSIDE)
  .setPaddingX(0);

// add a vertical slider
  cp5.addSlider("blue")
     .setPosition(10,90)
     .setSize(200,20)
     .setRange(0,256)
     .setValue(128)
     ;
  
  // reposition the Label for controller 'slider'
  cp5.getController("blue")
    .getValueLabel()
    .align(ControlP5.LEFT, ControlP5
    .BOTTOM_OUTSIDE)
    .setPaddingX(0);
  cp5.getController("blue")
  .getCaptionLabel()
  .align(ControlP5.RIGHT, ControlP5
  .BOTTOM_OUTSIDE)
  .setPaddingX(0);
 
}

void draw() {
 background(sliderTicks1);
  
  fill(myColor,myColor1,myColor2);
  rect(0,0,width,400);
  
}

void red(float theColor) {
  myColor = int(theColor);   
}

void green(float theColor) {
  myColor1 = int(theColor);    
}

void blue(float theColor) {
  myColor2 = int(theColor);  
}
