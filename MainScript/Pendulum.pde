class Pendulum{
  float xPos;
  float yPos;
  float freq;
  
  Pendulum(int pos){
    this.xPos = (1+pos)*pendulumWidth;
    this.yPos = height/2;
    this.freq = map(this.xPos, pendulumWidth/2, (1/2+nbrPendulum)*pendulumWidth, 1, 7); 
  }
  
  void update(float t){
    this.yPos = height/2 + 3.0/8*height*sin(t*freq);
  }
  
  void display(){
    fill(map(this.xPos, pendulumWidth/2, (1/2+nbrPendulum)*pendulumWidth, 0, 30), 255, 255, 70);
    rect(this.xPos, this.yPos, pendulumWidth, pendulumHeight, pendulumRadius);
  }
}
