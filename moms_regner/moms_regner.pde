//skriver de informationer man kender
int belobUdenMoms = 100;
float belobMedMoms = 0;
String navn = "Jens";

// Dette skrives for at der ikke gentages kviteringen i promten. Så den ikke spames.
void setup(){ //<>//
  noLoop();
}

//Printer det i promten
void draw(){
  kvitering(belobUdenMoms, navn);
  print ("dato: "+day()+"/"+month(),year(),"kl: "+hour()+":"+minute());
  
}

// Udrenger det totale beløb
float beregnTotale(int belob){ //<>//
  return belob*1.25;
}
//Udregner hele
float beregnUdenMoms(float moms){
  return moms*0.8;
}
//beregner kun momsen
float beregnMoms(int belobUdenMoms){
  return belobUdenMoms*0.25;
}

//Laver en kvitering, som ikke printes, men bare en funktion. Som kan deklereres i void draw.
void kvitering(int belobUdenMoms,String navn){
  println("Tak for dit køb " + navn + ",");
  println("Du har købt for " + beregnTotale(belobUdenMoms) +" kr.");
  println(" ");
  println("Beløb uden moms: " + beregnUdenMoms(beregnTotale(belobUdenMoms)) + " kr.");
  println("Beløb med moms: " + beregnTotale(belobUdenMoms) + " kr.");
  println("Momsbeløbet udgør: " + beregnMoms(belobUdenMoms) + " kr.");
}
