class Overzicht{
  private String startDate;
  private String endDate = String.valueOf(day()) + "-"+ String.valueOf(month()) +  "-" +String.valueOf(year());
  private float KOSTENPERX = 7.50;
  private ArrayList <Zuiper> zuipers = new ArrayList();
  private PrintWriter tempStartDate;
  
  
  public Overzicht(ArrayList <Zuiper> zuipers){
    this.zuipers = zuipers;  
  }


  public void genereerOverzicht(ArrayList <Zuiper> zuipers){
    overzicht.println(startDate + " t/m " + endDate + "\n");
    overzicht.println("Alle zuipers: \n");
  
  printZuipers(zuipers, KOSTENPERX);
  
  tempStartDate = createWriter("tempStartDate.txt");
  tempStartDate.println(endDate);
  tempStartDate.flush(); // Writes the remaining data to the file
  overzicht.flush(); // Writes the remaining data to the file
  tempStartDate.close(); // Finishes the file
  overzicht.close(); // Finishes the file
  exit(); // Stops the program
}
  
  
  
}