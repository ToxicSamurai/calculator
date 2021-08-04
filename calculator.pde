//ToxicSamurai
//You may use/edit my code

//Number variables
int p1, p2, q, output;

//Initialization
public void setup(){
  size(1000, 1000);
  stroke(0);
  strokeWeight(10);
  textSize(40);
}

//Clears the display is you press a key (debug/reset)
void keyPressed(){
  p1 = 0;
  p2 = 0;
  output = p1;
}

//Detects button presses and controls the p variable set
void mousePressed(){
  //Detect 1
  if(mouseX >= width/3 && mouseX <= width/3 + 80){
    if(mouseY >= height/3 + 221 && mouseY <= height/3 + 320){
      if(p1 != 0){
        p2 = 1;
        p1 = p1 * 10 + p2;
        output = p1;
      }
      if(p1 == 0){
        p1 = 1;
        output = p1;
      }
    }
  }
  //Detect 2
  if(mouseX >= width/3 + 81 && mouseX <= width/3 + 160){
    if(mouseY >= height/3 + 221 && mouseY <= height/3 + 320){
      if(p1 != 0){
        p2 = 2;
        p1 = p1 * 10 + p2;
        output = p1;
      }
      if(p1 == 0){
        p1 = 2;
        output = p1;
      }
    }
  }
  //Detect 3
  if(mouseX >= width/3 + 161 && mouseX <= width/3 + 240){
    if(mouseY >= height/3 + 221 && mouseY <= height/3 + 320){
      if(p1 == 0){
        p1 = 3;
        output = p1;
      }
      if(p1 != 0){
        p2 = 3;
        p1 = p1 * 10 + p2;
        output = p1;
      }
    }
  }
  //Detect 4
  if(mouseX >= width/3 && mouseX <= width/3 + 80){
    if(mouseY >= height/3 + 121 && mouseY <= height/3 + 220){
      if(p1 == 0){
        p1 = 4;
        output = p1;
      }
      if(p1 != 0){
        p2 = 4;
        p1 = p1 * 10 + p2;
        output = p1;
      }
    }
  }
  //Detect 5
  if(mouseX >= width/3 + 81 && mouseX <= width/3 + 160){
    if(mouseY >= height/3 + 121 && mouseY <= height/3 + 220){
      if(p1 == 0){
        p1 = 5;
        output = p1;
      }
      if(p1 != 0){
        p2 = 5;
        p1 = p1 * 10 + p2;
        output = p1;
      }
    }
  }
  //Detect 6
  if(mouseX >= width/3 + 161 && mouseX <= width/3 + 240){
    if(mouseY >= height/3 + 121 && mouseY <= height/3 + 220){
      if(p1 == 0){
        p1 = 6;
        output = p1;
      }
      if(p1 != 0){
        p2 = 6;
        p1 = p1 * 10 + p2;
        output = p1;
      }
    }
  }
  //Detect 7
  if(mouseX >= width/3 && mouseX <= width/3 + 80){
    if(mouseY >= height/3 + 20 && mouseY <= height/3 + 120){
      if(p1 == 0){
        p1 = 7;
        output = p1;
      }
      if(p1 != 0){
        p2 = 7;
        p1 = p1 * 10 + p2;
        output = p1;
      }
    }
  }
  //Detect 8
  if(mouseX >= width/3 + 81 && mouseX <= width/3 + 160){
    if(mouseY >= height/3 + 20 && mouseY <= height/3 + 120){
      if(p1 == 0){
        p1 = 8;
        output = p1;
      }
      if(p1 != 0){
        p2 = 8;
        p1 = p1 * 10 + p2;
        output = p1;
      }
    }
  }
  //Detect 9
  if(mouseX >= width/3 + 161 && mouseX <= width/3 + 240){
    if(mouseY >= height/3 + 20 && mouseY <= height/3 + 120){
      if(p1 == 0){
        p1 = 9;
        output = p1;
      }
      if(p1 != 0){
        p2 = 9;
        p1 = p1 * 10 + p2;
        output = p1;
      }
    }
  }
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

//Displays the number output variable
void display(){
  text(output, 610, 315);
}
