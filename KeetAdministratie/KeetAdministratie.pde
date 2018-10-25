final float KOSTENPERX = 7.50;
PrintWriter output;

String [] zuipers =  {"Luuk", "Bob", "Timo", "Gijs", "Joren", "Lisa", "Luc", "Joris"};

void setup(){
  
  output = createWriter("Administratie.txt");
 
  ZuiperController zuiperController = new ZuiperController();
  for(int i=0; i<zuipers.length; i++){
    zuiperController.addZuiper(zuipers[i]);
  }
  zuiperController.addXAanwezig("Joris");
  printZuipers(zuiperController.getZuipers());
  
  
}

void printZuipers(ArrayList<Zuiper> zuipers){
  output.println("Alle zuipers: \n");
  for(Zuiper z : zuipers){
    output.println("Naam: " + z.getNaam());
    output.println("Aantal x aanwezig: " + z.getXAanwezig());
    output.println("Kosten: €" + nf(z.getXAanwezig() * KOSTENPERX, 0, 2));
    output.println("");
  }
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}