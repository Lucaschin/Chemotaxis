Bacteria[] bob;   
void setup()   
{     
  size(1000, 1000);
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
  
    myX = 500;
    myY = 500;
    myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
  }
  void walk()
  {
 if (myX >1000) {
      myX = 500;
      myY = 500;
    }
    if (myY >1000) {
      myX = 500;
      myY = 500;
    }
    int meow = (int)(Math.random()*4);
    if(meow == 0){
      myX = myX+8;
    }else if(meow == 1){
      myX = myX-8;
    }else if(meow == 2){
      myY = myY+8;
    }else{
      myY = myY -8;
    }
    
    
  }
  void show()
  {
    ellipse(myX, myY, 8, 8);
    fill(myColor);
    stroke(myColor);
    
  }
  
}    