//ToxicSamurai
//You may use/edit my code

//Number variables
float p1, p2, q1, q2, output;
//Calculation booleans
boolean add, subtract, multiply, divide;

//Initialization
public void setup() {
  size(1000, 1000);
  stroke(0);
  strokeWeight(10);
  textSize(40);
}

//Detects button presses and controls the p variable set
void mousePressed() {
  //Calculations
  //Addition
  if (mouseX >= width/3 + 241 && mouseX <= width/3 + 320) {
    if (mouseY >= height/3 + 321 && mouseY <= height/3 + 420) {
      output = 0;
      if (subtract == false && multiply == false && divide == false) {
        add = true;
      }
    }
  }

  //Subtraction
  if (mouseX >= width/3 + 241 && mouseX <= width/3 + 320) {
    if (mouseY >= height/3 + 221 && mouseY <= height/3 + 320) {
      output = 0;
      if (add == false && multiply == false && divide == false) {
        subtract = true;
      }
    }
  }

  //Multiplication
  if (mouseX >= width/3 + 241 && mouseX <= width/3 + 320) {
    if (mouseY >= height/3 + 121 && mouseY <= height/3 + 220) {
      output = 0;
      if (add == false && subtract == false && divide == false) {
        multiply = true;
      }
    }
  }

  //Division
  if (mouseX >= width/3 + 241 && mouseX <= width/3 + 320) {
    if (mouseY >= height/3 + 20 && mouseY <= height/3 + 120) {
      //Sets output to 0 so q variable set can be set
      output = 0;
      if (add == false && subtract == false && multiply == false) {
        divide = true;
      }
    }
  }

  //Equals
  if (mouseX >= width/3 + 161 && mouseX <= width/3 + 240) {
    if (mouseY >= height/3 + 321 && mouseY <= height/3 + 420) {
      output = 0;
      if (add == true) {
        p1 = p1 + q1;
        output = p1;
        add = false;
        q1 = 0;
        q2 = 0;
      }
      if (subtract == true) {
        p1 = p1 - q1;
        output = p1;
        subtract = false;
        q1 = 0;
        q2 = 0;
      }
      if (multiply == true) {
        p1 = p1 * q1;
        output = p1;
        multiply = false;
        q1 = 0;
        q2 = 0;
      }
      if (divide == true) {
        p1 = p1 / q1;
        output = p1;
        divide = false;
        q1 = 0;
        q2 = 0;
      }
    }
  }

  //Sets q variable set if a symbol is pressed
  //Detect 0
  if (output == 0 && p1 != 0) {
    if (mouseX >= width/3 && mouseX <= width/3 + 160) {
      if (mouseY >= height/3 + 321 && mouseY <= height/3 + 420) {
        //Allows p1 to go past just one digit place
        if (q1 != 0) {
          q2 = 0;
          //Multiplies q1 by 10 and adds q2
          q1 = q1 * 10 + q2;
          output = p1;
        }
        //Sets one digit place nymbers
        if (q1 == 0) {
          q1 = 0;
          output = p1;
        }
      }
    }
    //Detect 1
    if (mouseX >= width/3 && mouseX <= width/3 + 80) {
      if (mouseY >= height/3 + 221 && mouseY <= height/3 + 320) {
        if (q1 != 0) {
          q2 = 1;
          q1 = q1 * 10 + q2;
          output = p1;
        }
        if (q1 == 0) {
          q1 = 1;
          output = q1;
        }
      }
    }
    //Detect 2
    if (mouseX >= width/3 + 81 && mouseX <= width/3 + 160) {
      if (mouseY >= height/3 + 221 && mouseY <= height/3 + 320) {
        if (q1 != 0) {
          q2 = 2;
          q1 = q1 * 10 + q2;
          output = q1;
        }
        if (q1 == 0) {
          q1 = 2;
          output = q1;
        }
      }
    }
    //Detect 3
    if (mouseX >= width/3 + 161 && mouseX <= width/3 + 240) {
      if (mouseY >= height/3 + 221 && mouseY <= height/3 + 320) {
        if (q1 != 0) {
          q2 = 3;
          q1 = q1 * 10 + q2;
          output = q1;
        }
        if (q1 == 0) {
          q1 = 3;
          output = q1;
        }
      }
    }
    //Detect 4
    if (mouseX >= width/3 && mouseX <= width/3 + 80) {
      if (mouseY >= height/3 + 121 && mouseY <= height/3 + 220) {
        if (q1 != 0) {
          q2 = 4;
          q1 = q1 * 10 + q2;
          output = q1;
        }
        if (q1 == 0) {
          q1 = 4;
          output = q1;
        }
      }
    }
    //Detect 5
    if (mouseX >= width/3 + 81 && mouseX <= width/3 + 160) {
      if (mouseY >= height/3 + 121 && mouseY <= height/3 + 220) {
        if (q1 != 0) {
          q2 = 5;
          q1 = q1 * 10 + q2;
          output = q1;
        }
        if (q1 == 0) {
          q1 = 5;
          output = q1;
        }
      }
    }
    //Detect 6
    if (mouseX >= width/3 + 161 && mouseX <= width/3 + 240) {
      if (mouseY >= height/3 + 121 && mouseY <= height/3 + 220) {
        if (q1 != 0) {
          q2 = 6;
          q1 = q1 * 10 + q2;
          output = q1;
        }
        if (q1 == 0) {
          q1 = 6;
          output = q1;
        }
      }
    }
    //Detect 7
    if (mouseX >= width/3 && mouseX <= width/3 + 80) {
      if (mouseY >= height/3 + 20 && mouseY <= height/3 + 120) {
        if (q1 != 0) {
          q2 = 7;
          q1 = q1 * 10 + q2;
          output = q1;
        }
        if (q1 == 0) {
          q1 = 7;
          output = q1;
        }
      }
    }
    //Detect 8
    if (mouseX >= width/3 + 81 && mouseX <= width/3 + 160) {
      if (mouseY >= height/3 + 20 && mouseY <= height/3 + 120) {
        if (q1 != 0) {
          q2 = 8;
          q1 = q1 * 10 + q2;
          output = q1;
        }
        if (q1 == 0) {
          q1 = 8;
          output = q1;
        }
      }
    }
    //Detect 9
    if (mouseX >= width/3 + 161 && mouseX <= width/3 + 240) {
      if (mouseY >= height/3 + 20 && mouseY <= height/3 + 120) {
        if (q1 != 0) {
          q2 = 9;
          q1 = q1 * 10 + q2;
          output = q1;
        }
        if (q1 == 0) {
          q1 = 9;
          output = q1;
        }
      }
    }
  }

  //Sets p variable set
  //Detect 0
  if (q1 == 0) {
    if (mouseX >= width/3 && mouseX <= width/3 + 160) {
      if (mouseY >= height/3 + 321 && mouseY <= height/3 + 420) {
        //Allows p1 to go past just one digit place
        if (p1 != 0) {
          p2 = 0;
          //Multiplies p1 by 10 and adds p2
          p1 = p1 * 10 + p2;
          output = p1;
        }
        //Sets one digit place nymbers
        if (p1 == 0) {
          p1 = 0;
          output = p1;
        }
      }
    }
    //Detect 1
    if (mouseX >= width/3 && mouseX <= width/3 + 80) {
      if (mouseY >= height/3 + 221 && mouseY <= height/3 + 320) {
        if (p1 != 0) {
          p2 = 1;
          p1 = p1 * 10 + p2;
          output = p1;
        }
        if (p1 == 0) {
          p1 = 1;
          output = p1;
        }
      }
    }
    //Detect 2
    if (mouseX >= width/3 + 81 && mouseX <= width/3 + 160) {
      if (mouseY >= height/3 + 221 && mouseY <= height/3 + 320) {
        if (p1 != 0) {
          p2 = 2;
          p1 = p1 * 10 + p2;
          output = p1;
        }
        if (p1 == 0) {
          p1 = 2;
          output = p1;
        }
      }
    }
    //Detect 3
    if (mouseX >= width/3 + 161 && mouseX <= width/3 + 240) {
      if (mouseY >= height/3 + 221 && mouseY <= height/3 + 320) {        
        if (p1 != 0) {
          p2 = 3;
          p1 = p1 * 10 + p2;
          output = p1;
        }
        if (p1 == 0) {
          p1 = 3;
          output = p1;
        }
      }
    }
    //Detect 4
    if (mouseX >= width/3 && mouseX <= width/3 + 80) {
      if (mouseY >= height/3 + 121 && mouseY <= height/3 + 220) {
        if (p1 != 0) {
          p2 = 4;
          p1 = p1 * 10 + p2;
          output = p1;
        }
        if (p1 == 0) {
          p1 = 4;
          output = p1;
        }
      }
    }
    //Detect 5
    if (mouseX >= width/3 + 81 && mouseX <= width/3 + 160) {
      if (mouseY >= height/3 + 121 && mouseY <= height/3 + 220) {
        if (p1 != 0) {
          p2 = 5;
          p1 = p1 * 10 + p2;
          output = p1;
        }
        if (p1 == 0) {
          p1 = 5;
          output = p1;
        }
      }
    }
    //Detect 6
    if (mouseX >= width/3 + 161 && mouseX <= width/3 + 240) {
      if (mouseY >= height/3 + 121 && mouseY <= height/3 + 220) {
        if (p1 != 0) {
          p2 = 6;
          p1 = p1 * 10 + p2;
          output = p1;
        }
        if (p1 == 0) {
          p1 = 6;
          output = p1;
        }
      }
    }
    //Detect 7
    if (mouseX >= width/3 && mouseX <= width/3 + 80) {
      if (mouseY >= height/3 + 20 && mouseY <= height/3 + 120) {
        if (p1 != 0) {
          p2 = 7;
          p1 = p1 * 10 + p2;
          output = p1;
        }
        if (p1 == 0) {
          p1 = 7;
          output = p1;
        }
      }
    }
    //Detect 8
    if (mouseX >= width/3 + 81 && mouseX <= width/3 + 160) {
      if (mouseY >= height/3 + 20 && mouseY <= height/3 + 120) {
        if (p1 != 0) {
          p2 = 8;
          p1 = p1 * 10 + p2;
          output = p1;
        }
        if (p1 == 0) {
          p1 = 8;
          output = p1;
        }
      }
    }
    //Detect 9
    if (mouseX >= width/3 + 161 && mouseX <= width/3 + 240) {
      if (mouseY >= height/3 + 20 && mouseY <= height/3 + 120) {
        if (p1 != 0) {
          p2 = 9;
          p1 = p1 * 10 + p2;
          output = p1;
        }
        if (p1 == 0) {
          p1 = 9;
          output = p1;
        }
      }
    }
  }

  //Clears the display is you press a key (debug/reset)
  //rect(width/10, height-200, 200, 100);
  if (mouseX >= width/10 && mouseX <= width/10 + 200) {
    if (mouseY >= height - 200 && mouseY <= height - 100) {
      p1 = 0;
      p2 = 0;
      q1 = 0;
      q2 = 0;
      output = 0;
    }
  }
}

public void draw() {
  background(255);
  shapes();
  numbers();
  buttonPress();
  display();
  println(mouseX, "+", mouseY);
  println(p1, "+", p2, "+", q1, "+", q2, "+", output);
  println(add, "+", subtract, "+", multiply, "+", divide);
}

//Creates the shape of the calculate (UI
void shapes() {
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
  line(width/3+249.75, height/4+100, width/3+249.75, height/4+500);

  //Clear box
  rect(width/10, height-200, 200, 100);
}

//Creates the numbers on the calculator buttons
void numbers() {
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
  text("=", 527.5, 715);
  text("+", 610, 715);

  //Clear button
  text("Clear", 150, 862.5);
}

//Detection for which buttons are pressed
void buttonPress() {
}

//Displays the number output variable and framerate in corner
void display() {
  text(output, width/3, 315);
  text("Framerate: " + frameRate, width-width + 25, height-height + 50);
}
