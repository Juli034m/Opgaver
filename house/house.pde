//lav et rum //<>// //<>// //<>//
Room[] house = new Room[6];

int l =105;

void setup() {
  size(800, 800);
  background(205);
  house[0] =new Room("bathroom 2", false, 100, 300); 
  house[1] =new Room("living room", false, 100+l, 300);
  house[2] =new Room("bedroom", false, 100+2*l, 300);
  house[3] =new Room("bathroom 1", false, 100, 300+l); 
  house[4] =new Room("kitchen", false, 100+l, 300+l);
  house[5] =new Room("kids bedroom", false, 100+2*l, 300+l);
}

void draw() {
  for (int i =0; i<house.length; i++) {
  //tegner taget   
  house[i].drawRoof();
  // tegn rum
  house[i].drawRoom();
  }
  checkHouse();
}


void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);
  for (int i = 0; i<house.length; i++) {
    // find ud af om vi tænder eller slukker lyset
    if (house[i].isRoomClicked(mouseX, mouseY))
      if (house[i].light) {
        house[i].setLight(false);
        text("Turning off the light in "+house[i].getRoomName(), 100, 700);
      } else {
        house[i].setLight(true);
        text("Turning on the light in "+house[i].getRoomName(), 100, 700);
      }
  }
}
  void checkHouse() {
    boolean found=false;
    for (int i=0; i< house.length; i++) {
      if (house[i].isLightOn() == true) {
        println ("WOW turn off the light in the "+house[i].getRoomName());
        found = true;
      }
    }
    if (!found) {
      println("All right! You’r ready to go!");
    } else {
      println("you forgot something");
    }
}
