// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// A random walker object!

class Walker {
  int x,y;

  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }


  void render() {
    stroke(0);
    strokeWeight(2);
    point(x,y);
  }

  // Randomly move up, down, left, right, or stay in one place
  void step() {
    int choice = int(random(4));
    
    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
  }
}
class Walker2 {
  int x,y;

  Walker2() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(230,15,3);
    point(x,y);
  }


  void render() {
    stroke(230,15,3);
    strokeWeight(2);
    point(x,y);
  }

  // Randomly move up, down, left, right, or stay in one place
  void step() {
    int choice = int(random(4));
    
    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
  }
}
Walker w;
Walker2 w2;

void setup() {
  size(640,360);
  w = new Walker();
  w2 = new Walker2();
  background(255);
}

void draw() {
  w.step();
  w2.step();
  w.display();
  w2.display();
}
