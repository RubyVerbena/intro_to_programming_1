//danielle

public class Planet{ //defines that there will be an object named Planet
  int[] loc;   //defines the location of the Planet
  color myColor; //states that the color of the Planet will be defined by myColor
  int mySize; //states that the size of the Planet will be defined by mySize
  int dx, dy; 
  String name;
  
  public Planet(){  //tells us that we're going to make a planet
    println("making a planet");
    loc = new int[2];
    assignDefaultValues();
  }
  
  void assignDefaultValues(){  
    println("assigning values");
    name = "a planet";
    loc[0] = 200;
    loc[1] = 200;
    myColor = color(255, 255 ,204); //defines the color of the earth
    mySize = 50; //defines the size of the earth
    dx = dy = 100;
  }
  
  void drawPlanet(){
    fill(myColor);
    ellipse(loc[0], loc[1], mySize, mySize);
    if( loc[0] + mySize / 2 >= 600 || loc[0] - mySize / 2 <= 0 ){
      dx *= -1; //changing this variable makes the earth and sun whiz away horizontally
    }
    if( loc[1] + mySize / 2 >= 600 || loc[1] - mySize / 2 <= 0 ){
      dy *= -1;  //changing this variable makes the earth and sun whiz away vertically
    }
    loc[0] += dx;
    loc[1] += dy;
//    println(name+ " loc: " + loc[0] + ", " + loc[1]);
  }
}

public class Meteor extends Planet { //extends the definition of planet to include meteors
  
  boolean followMouse;  //defines the command followMouse as either true or false
  
  public Meteor(){ 
    super();
    println("actually im a meteor"); //this prints on the screen below when you click the screen
    
    myColor = color( 204 ,000, random (255) ); //controls the color of the meteor planets. 
    //I changed the last variable of the code to random so that I get a range of pinks and reds.
    
    dx = (int) random(3, 17); 
    dy = (int) random(3, 17);
    
    followMouse = false; //if set to true, all the meteors stay with your mouse
  }
  
  void drawPlanet(){
    if ( followMouse ) {
      fill(myColor);
      loc[0] = mouseX;
      loc[1] = mouseY;
      ellipse(loc[0], loc[1], mySize, mySize);
    }
    else{
      super.drawPlanet();
    }
    
  }
  
}
