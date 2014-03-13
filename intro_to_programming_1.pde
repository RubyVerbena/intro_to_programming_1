//danielle tanguis

Planet earth; 
Planet sun;

ArrayList<Meteor> mets;

void setup() {
  size(600, 600); //defines the area of the void (even though the area the planets uses doesn't change)
  frameRate(25); //defines the frame rate of the animation
  background(0); //confusing, nothing I do changes the background
  earth = new Planet(); //defines the earth as a type of planet
  earth.name = "Earth"; //defines the name of the Earth as Earth
  earth.myColor = color(0, 0, 255); //defines the color of the earth
  earth.dx = earth.dy = -25;  //defines the speed of the earth
  earth.loc[0] = 88; //defines the start location of the earth in the sky
  

  sun = new Planet(); //defines the sun as a type of planet
  sun.name = "Sun"; //defines the sun's name as Sun
  sun.mySize = 150; //defines the size of the sun
  sun.dx = sun.dy = 5; //defines the travel speed of the sun

  mets = new ArrayList<Meteor>();  //states that there will be a new set of items called meteors
}

void draw() {   //tells the void to appear
  background(0);

  sun.drawPlanet();  //tells the sun to appear
  earth.drawPlanet(); //tells the earth to appear

  for ( Meteor met : mets) {  //tells it what to do when you want a meteor to appear
    met.drawPlanet(); //tells the meteor to appear
  }
}

void mouseClicked() {  //when you click the mouse
  mets.add( new Meteor() ); //draw a new meteor
}

void keyPressed() { //when you press a key on the keyboard
  if ( !mets.isEmpty() ) {
    mets.remove(0); //take away a meteor
  }
}

