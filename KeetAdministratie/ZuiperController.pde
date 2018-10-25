class ZuiperController{
  
  private ArrayList<Zuiper> zuipers = new ArrayList();
  
    public ArrayList getZuipers(){
    return zuipers;
  }
 
  public void addZuiper(String naam){
    Zuiper zuiper = new Zuiper(naam);
    zuipers.add(zuiper);
  }
  
   public void addXAanwezig(String naam){
   for(Zuiper z : zuipers)
     if (z.getNaam() == naam){
         z.setXAanwezig();
     }
     else {
       println("ERROR: Zuiper niet gevonden \n");
     }
 }
 
}