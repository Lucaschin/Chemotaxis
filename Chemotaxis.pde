Bacteria[] bob;   
void setup()   
{     
  size(500, 500);
  frameRate(50);
  bob = new Bacteria[100];
  for (int i =0; i<bob.length; i++)
  {
    bob[i] = new Bacteria();
   
  }
}   
void draw()   
{    
  

  for (int i = 0; i <bob.length; i++)
  {
    
    bob[i].walk();
    bob[i].show();
  }
}  
class Bacteria    
{     
  int myX, myY, myColor;
  Bacteria()
  {
  
    myX = 250;
    myY = 250;
    myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
  }
  void walk()
  {
 if (myX >500) {
      myX = 250;
      myY = 250;
    }
    if (myY >500) {
      myX = 250;
      myY = 250;
    }
    int meow = (int)(Math.random()*4);
    if(meow == 0){
      myX = myX+1;
    }else if(meow == 1){
      myX = myX-1;
    }else if(meow == 2){
      myY = myY+1;
    }else{
      myY = myY -1;
    }
    
    
  }
  void show()
  {
    ellipse(myX, myY, 1, 1);
    fill(myColor);
    stroke(myColor);
    
  }
  
}    