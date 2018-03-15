Mover [] movers;
 
 void setup(){
   size(640,360);
   //iniat the array
   movers = new Mover[5];
   
   for (int i=0; i < movers.length; i++){
     movers[i] = new Mover();
   }
 }
 
 void draw() {
    background(255);
    //for every Mover m in the array movers , do this to it (enhaced loop)
    for (Mover m : movers){  
   //cheating the gravity formula... we increase the gravity force
   //depending on the mass by just multiplieng vectors;
   PVector gravity = new PVector(0,0.3);
   gravity.mult(m.mass);
    m.applyForce(gravity);
    
   if(mousePressed){
   PVector wind = new PVector(0.2,0);
   m.applyForce(wind);
   }
    
   m.update();
   m.edges();
   m.display();
    }
 }