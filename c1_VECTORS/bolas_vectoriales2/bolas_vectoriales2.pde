Mover mover;
Mover mover2;

void setup() {
  size(640,360);
  
  mover = new Mover();
  mover2 = new Mover();
  
  
}

void draw() {
  background (200,215,215);
  
  mover.update();
  mover.checkEdges();
  mover.display();
  mover2.update();
  mover2.checkEdges();
  mover2.display();
  
  
}

class Mover {
  
  PVector location;
  PVector velocity;
  
  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
  }
  
  void update() {
    location.add(velocity);
  }
  
  void display() {
    stroke(10,5,0);
    fill(random(0,255),5,0);
    ellipse(location.x,location.y,random(16,32),random(16,32));
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}
  
