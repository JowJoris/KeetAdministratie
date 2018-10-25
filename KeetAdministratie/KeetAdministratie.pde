PrintWriter overzicht;

String [] zuipers =  {"Luuk", "Bob", "Timo", "Gijs", "Joren", "Lisa", "Luc", "Joris"};
ArrayList<Overzicht> overzichten = new ArrayList();

void setup(){
  
  overzicht = createWriter("Administratie.txt");
  
 
  ZuiperController zuiperController = new ZuiperController();
  for(int i=0; i<zuipers.length; i++){
    zuiperController.addZuiper(zuipers[i]);
  }
  zuiperController.addXAanwezig("Joris");
  
  
  Overzicht o = new Overzicht(zuiperController.getZuipers());
  o.genereerOverzicht(zuiperController.getZuipers());
  
  
}

void printZuipers(ArrayList<Zuiper> zuipers, float KOSTENPERX){
  for(Zuiper z : zuipers){
    overzicht.println("Naam: " + z.getNaam());
    overzicht.println("Aantal x aanwezig: " + z.getXAanwezig());
    overzicht.println("Kosten: €" + nf(z.getXAanwezig() * KOSTENPERX, 0, 2));
    overzicht.println("");
  }

}