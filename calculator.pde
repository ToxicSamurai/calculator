//ToxicSamurai
//You may use/edit my code

int p, q;
//Number variables

//Initialization
public void setup(){
  size(1000, 1000);
  stroke(0);
  strokeWeight(10);
  textSize(40);
}

public void draw(){
  background(255);
  shapes();
  numbers();
  buttonPress();
  display();
  println(mouseX, "+", mouseY);
}

//Creates the shape of the calculate (UI
void shapes(){
  fill(255);
  //Box
  rect(width/3, height/4, width/3, height/2);
  
  //Horizontal lines
  line(width/3, height/4+100, width/3+width/3, height/4+100);
  line(width/3, height/4+200, width/3+width/3, height/4+200);
  line(width/3, height/4+300, width/3+width/3, height/4+300);
  line(width/3, height/4+400, width/3+width/3, height/4+400);
  
  //Vertical lines
  line(width/3+83.25, height/4+100, width/3+83.25, height/4+400);
  line(width/3+166.5, height/4+100, width/3+166.5, height/4+500);
  line(width/3+249.75, height/4+100, width/3+249.75, height/4+400);
}

//Creates the numbers on the calculator buttons
void numbers(){
  fill(0);
  //Top line
  text("7", 362.5, 415);
  text("8", 445, 415);
  text("9", 527.5, 415);
  text("/", 610, 415);
  
  //Middle top line
  text("4", 362.5, 515);
  text("5", 445, 515);
  text("6", 527.5, 515);
  text("*", 610, 515);
  
  //Middle bottom line
  text("1", 362.5, 615);
  text("2", 445, 615);
  text("3", 527.5, 615);
  text("-", 610, 615);
  
  //Bottom line
  text("0", 403.75, 715);
  text("=", 568.75, 715);
}

//Detection for which buttons are pressed
void buttonPress(){
  
}

void display(){
  text(q, 610, 315);
}
