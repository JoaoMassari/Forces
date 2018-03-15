class Mover{ 
  PVector location;
  PVector velocity;
  PVector acceleration;
  float t = 0;
  
  float mass;
  
  Mover(){
   location = new PVector(random(width),height/2);
   velocity = new PVector(0,0);
   acceleration = new PVector(0,0);
   
   mass = random(1,4);
   
  }
  
  void update(){
     
   
 
    velocity.add(acceleration);
    location.add(velocity);
    //a gente zera a aceleração , a cada frame nos temos que ver qual a força responsavel
    //pela aceleração , entao resetamos ela... oque fica é a velocidade
    acceleration.mult(0);
    //velocity.limit(5);
  }
  //Newton's 2nd Law (beginning)
  void applyForce(PVector force) {
    
    PVector f = PVector.div(force,mass);
    
    acceleration.add(f);
      
  }
  
  void edges() {
    if(location.x > width){
    location.x = width;
    velocity.x *= -1;
    }
    if(location.x < 0){
    location.x = 0;
    velocity.x *= -1;
    }
    if(location.y > height){
    location.y = height;
    velocity.y *= -1;
    }
    if(location.y < 0){
    location.y =0;
    velocity.y *=-1;
    }
  
  }
  
  void display(){
  stroke(0);
  strokeWeight(2);
  fill(127,100);
  ellipse(location.x, location.y , mass*20, mass*20);
  
  }  
}