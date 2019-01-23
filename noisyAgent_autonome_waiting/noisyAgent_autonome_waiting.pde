int n=10000;
Particle[] particules = new Particle[5];
PVector target;
float xoff, yoff;
float[] x = new float[n]; 
float[] y = new float[n]; 
boolean ok = false;
float timer, t_stamp;

void setup() {
  size(500, 500);
  background(255);
  smooth();
  stroke(0, 64);

  for (int i = 0; i < particules.length; i++) {
    particules[i] = new Particle(int(random(0, width)), int(random(0, height)));
  }
}

void draw() {
  pushMatrix();
  fill(255, 20);
  rect(0, 0, width, height);
  popMatrix();

  for (int i =0; i < particules.length; i++) {
    particules[i].update();
    particules[i].display(i);
  }
  fill(0);
  
  //en attendant
  println("ok = ", ok);
}

void keyPressed() {
  if (keyCode == TAB) ok = false;
  if (keyCode == SHIFT) ok = true;
}