
String[] kordinater = new String[10];

  int index =0;

void setup(){
  size(600,300);
}

void draw(){
}

void mouseClicked(){
    if (index>=10) {
  saveStrings("kordinater.txt", kordinater); 
  println("fil gemt");
    }
  else{
    String s = str(mouseX) +" "+ str(mouseY);
    kordinater[index] = s;
    println(index+1, " ", mouseX, " ", mouseY);
    index++;
    }
}
