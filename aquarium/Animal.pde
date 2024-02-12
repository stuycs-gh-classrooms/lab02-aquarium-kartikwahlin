class Animal{
  int x;
  int y;
  int xSpeed;
  int ySpeed;
  int hunger;
  int s;
  Animal(int X,int Y,int Xfast,int Yfast,int size){
    x=X;
    y=Y;
    xSpeed=Xfast;
    ySpeed=Yfast;
    s=size;
  }
  void display(){
   rectMode(CENTER);
   fill(0);
   rect(x,y,2*s,s);
  }
  void move(){
   if (x<=s+tankX||x>=tankX+tankW-s){
    xSpeed*=-1; 
   }
   if(y<=tankY+(s/2)||y>=tankY+tankH-(s/2)){
    ySpeed*=-1; 
   }
   x+=xSpeed;
   y+=ySpeed;
  }
  
  
  
  
  
  
  
}//Animal
