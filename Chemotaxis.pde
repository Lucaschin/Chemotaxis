Bacteria[] bob;   
void setup()   
{     
  size(500, 500);
  frameRate(50);
  bob = new Bacteria[300];
  for (int i =0; i<bob.length; i++)
  {
    bob[i] = new Bacteria();
   
  }
}   
void draw()   
{    
  

  background(0);
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
      myX = myX+8;
    }else if(meow == 1){
      myX = myX-8;
    }else if(meow == 2){
      myY = myY+8;
    }else{
      myY = myY -8;
    }
    if(mouseX != color(0));
    fill(0);
    
  }
  void show()
  {
    ellipse(myX, myY, 5, 5);
    fill(myColor);
    stroke(myColor);
    
  }
  
}    