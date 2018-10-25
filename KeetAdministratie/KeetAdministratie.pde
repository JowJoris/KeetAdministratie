String [] zuipers =  {"Luuk", "Bob", "Timo", "Gijs", "Joren", "Lisa", "Luc", "Joris"};
ArrayList<Overzicht> overzichten = new ArrayList();

void setup(){
  
  
 
  ZuiperController zuiperController = new ZuiperController();
  for(int i=0; i<zuipers.length; i++){
    zuiperController.addZuiper(zuipers[i]);
  }
  zuiperController.addXAanwezig("Joris");
  
  
  Overzicht o = new Overzicht(zuiperController.getZuipers());
  o.genereerOverzicht();
  
  
}