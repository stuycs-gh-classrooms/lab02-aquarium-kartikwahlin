class Goldfish extends Animal {
  int buffr;
  Goldfish(int X,int Y,int Xfast,int Yfast,int size){
   super(X,Y,Xfast,Yfast,size);
   y=height/2;
   buffr=int(random(50));
   cc= color(255,215,0);
  }
 void move(){
   if (x<=s+tankX||x>=tankX+tankW-s){
    xSpeed*=-1; 
   }
   if(y<=tankY+(s/2)+buffr||y>=tankY+tankH-(s/2)-buffr){
    ySpeed*=-1; 
   }
   x+=xSpeed;
   y+=ySpeed;
  }
  
}
