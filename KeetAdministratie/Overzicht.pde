class Overzicht{
  private String startDate;
  private String endDate = String.valueOf(day()) + "-"+ String.valueOf(month()) +  "-" +String.valueOf(year());
  private float KOSTENPERX = 7.50;
  private ArrayList <Zuiper> zuipers = new ArrayList();
  private PrintWriter tempStartDate;
  private PrintWriter overzicht;
  
  
  public Overzicht(ArrayList <Zuiper> zuipers){
    this.zuipers = zuipers;
  }
  
public void genereerOverzicht(){
    parseFile();
    overzicht = createWriter("Overzichten/Overzicht " + startDate + " tm " + endDate + ".txt");
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


  public void printZuipers(ArrayList<Zuiper> zuipers, float KOSTENPERX){
    for(Zuiper z : zuipers){
      overzicht.println("Naam: " + z.getNaam());
      overzicht.println("Aantal x aanwezig: " + z.getXAanwezig());
      overzicht.println("Kosten: €" + nf(z.getXAanwezig() * KOSTENPERX, 0, 2));
      overzicht.println("");
    }
  }
  
  void parseFile() {
  // Open the file from the createWriter() example
  BufferedReader reader = createReader("tempStartDate.txt");
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
      startDate = line;
    }
    reader.close();
  } catch (IOException e) {
    e.printStackTrace();
  }
} 
  
}