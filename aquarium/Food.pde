class Food{
 int x;
 int y;
 int value;
 int size;
 int sinkspeed;
  Food(int X,int Y){
   x=X;
   y=Y;
   size=5;
   value=500;
   sinkspeed=1;
  }
  void display(){
    fill(165,42,42);
    rectMode(CENTER);
    rect(x,y,size/2,size/2);
  }//display
  void move(){
    if(y<(tankY+tankH-(size/2))){
      y+=sinkspeed; 
    }
  }//move
  int xval(){
   return x; 
  }
  int yval(){
   return y; 
  }
  int sval(){
   return size; 
  }
  int fval(){
   return value; 
  }
  
  
}
