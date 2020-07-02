ArrayList<Pendulum> pends;

int nbrPendulum;
float pendulumWidth;
float pendulumHeight;
float pendulumRadius;
float time;

void setup(){
  size(600, 600);
  frameRate(30);
  colorMode(HSB);
  rectMode(CENTER);
  noStroke();
  
  pends = new ArrayList<Pendulum>();
  
  nbrPendulum = 20;
  pendulumWidth = width/(nbrPendulum+1);
  pendulumHeight = height/4;
  pendulumRadius = pendulumWidth/4;  
  time = 0;
  
  for(int i=0; i<nbrPendulum; i++){
    Pendulum pend = new Pendulum(i);
    pends.add(pend);
  }
}

void draw(){
  background(0);
  
  for(Pendulum pend : pends){
    pend.update(time);
    pend.display();
  }
  
  time += 0.01;
}
