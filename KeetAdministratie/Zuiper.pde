class Zuiper{
 private String naam;
 private int xAanwezig;
 
 public Zuiper (String naam){
  this.naam = naam;
  xAanwezig = 0;
 }
 
 public String getNaam(){
   return naam;
 }
 
 public int getXAanwezig(){
   return xAanwezig;
 }
 
 public void setXAanwezig(){
   xAanwezig++;
 }
}