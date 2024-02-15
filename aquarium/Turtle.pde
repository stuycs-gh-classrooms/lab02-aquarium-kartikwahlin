class Turtle extends Animal {
  Turtle(int X,int Y,int Xfast,int Yfast,int size){
   super(X,Y,Xfast,Yfast,size);
   cc=color(1,50,32);
  }
  
  void display(){
   rectMode(CENTER);
   fill(cc);
   strokeWeight(1);
   rect(x,y,2*s,s);
   //arc(float(x),float(y),float(20),float(20),0,-PI); unique sprite attempt
  }
}
