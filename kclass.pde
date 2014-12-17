Ball [] ball; //arrays
Sun [] sun;
Mercury [] mercury;
Venus [] venus;
Earth [] earth;
Mars [] mars;
Jupiter [] jupiter;
Saturn [] saturn;
Uranus [] uranus;
Neptune [] neptune;
Pluto [] pluto;

boolean start = false;
boolean on = true;
float k = 2.0;
float da;
PImage open;
float alpha;



void setup() {
  size(800, 800);
  alpha = 255;
  open = loadImage("http://i.imgur.com/fewc1y5.png");
  ball = new Ball[1000]; 
  for (int i = 0; i < ball.length; i++) {
    ball[i] = new Ball(width/2, height/2);
  }

  sun = new Sun[1]; 
  for (int i = 0; i < sun.length; i++) {
    sun[i] = new Sun(width/2, height/2);
  }

  mercury = new Mercury[1]; 
  for (int i = 0; i < mercury.length; i++) {
    mercury[i] = new Mercury(width/2, height/2);
  }


  venus = new Venus[1]; 
  for (int i = 0; i < venus.length; i++) {
    venus[i] = new Venus(width/2, height/2);
  }

  earth = new Earth[1]; 
  for (int i = 0; i < earth.length; i++) {
    earth[i] = new Earth(width/2, height/2);
  }

  mars = new Mars[1]; 
  for (int i = 0; i < mars.length; i++) {
    mars[i] = new Mars(width/2, height/2);
  }

  jupiter = new Jupiter[1]; 
  for (int i = 0; i < jupiter.length; i++) {
    jupiter[i] = new Jupiter(width/2, height/2);
  }

  saturn = new Saturn[1]; 
  for (int i = 0; i < saturn.length; i++) {
    saturn[i] = new Saturn(width/2, height/2);
  }

  uranus = new Uranus[1]; 
  for (int i = 0; i < uranus.length; i++) {
    uranus[i] = new Uranus(width/2, height/2);
  }

  neptune = new Neptune[1]; 
  for (int i = 0; i < neptune.length; i++) {
    neptune[i] = new Neptune(width/2, height/2);
  }

  pluto = new Pluto[1]; 
  for (int i = 0; i < pluto.length; i++) {
    pluto[i] = new Pluto(width/2, height/2);
  }
}



void draw() {
 
  if (on) {
  image(open,0,0);
  }

  if (mousePressed) {
    start = true;
    }

  if (start) {
   background(0);
   image(open,0,0); //Used this: http://www.openprocessing.org/sketch/57102 as guidance for fade out effect
   tint(255,255,255,alpha);
   if (alpha > 0) {
     alpha--;
   }

    
    translate(width/2, height/2); //shifts starting position
    scale(k); //resizes planets and stars
    k =+ 0.16;


    //Planets | Stars | Sun
    for (int i = 0; i < mercury.length; i++) {
      mercury[i].posX += mercury[i].speedX;
      mercury[i].posY += mercury[i].speedY;

      smooth();
      stroke(#6b4304);
      fill(#6b4304);
      da = constrain(da, 8, 8);
      ellipse(mercury[i].posX, mercury[i].posY, da++, da++);
    }


    for (int i = 0; i < venus.length; i++) {
      venus[i].posX += venus[i].speedX;
      venus[i].posY += venus[i].speedY;

      smooth();
      stroke(#ffea00);
      fill(#ffea00);
      da = constrain(da, 8, 8);
      ellipse(venus[i].posX, venus[i].posY, da++, da++);
    }


    for (int i = 0; i < earth.length; i++) {
      earth[i].posX += earth[i].speedX;
      earth[i].posY += earth[i].speedY;

      smooth();
      stroke(#00ffc6);
      fill(#00ffc6);
      da = constrain(da, 8, 8);
      ellipse(earth[i].posX, earth[i].posY, da++, da++);
    }

    for (int i = 0; i < mars.length; i++) {
      mars[i].posX += mars[i].speedX;
      mars[i].posY += mars[i].speedY;

      smooth();
      stroke(#da0000);
      fill(#da0000);
      da = constrain(da, 8, 8);
      ellipse(mars[i].posX, mars[i].posY, da++, da++);
    }

    for (int i = 0; i < jupiter.length; i++) {
      jupiter[i].posX += jupiter[i].speedX;
      jupiter[i].posY += jupiter[i].speedY;

      smooth();
      stroke(#f06832);
      fill(#f06832);
      da = constrain(da, 20, 20);
      ellipse(jupiter[i].posX, jupiter[i].posY, da++, da++);
    }

    for (int i = 0; i < saturn.length; i++) {
      saturn[i].posX += saturn[i].speedX;
      saturn[i].posY += saturn[i].speedY;

      smooth();
      stroke(#f0af13);
      fill(#f0af13);
      da = constrain(da, 10, 10);
      ellipse(saturn[i].posX, saturn[i].posY, da++, da++);
    }


    for (int i = 0; i < uranus.length; i++) {
      uranus[i].posX += uranus[i].speedX;
      uranus[i].posY += uranus[i].speedY;

      smooth();
      stroke(#8ab3fe);
      fill(#8ab3fe);
      da = constrain(da, 8, 8);
      ellipse(uranus[i].posX, uranus[i].posY, da++, da++);
    }


    for (int i = 0; i < neptune.length; i++) {
      neptune[i].posX += neptune[i].speedX;
      neptune[i].posY += neptune[i].speedY;

      smooth();
      stroke(#005aff);
      fill(#005aff);
      da = constrain(da, 8, 8);
      ellipse(neptune[i].posX, neptune[i].posY, da++, da++);
    }

    for (int i = 0; i < pluto.length; i++) {
      pluto[i].posX += pluto[i].speedX;
      pluto[i].posY += pluto[i].speedY;

      smooth();
      stroke(#10f0de);
      fill(#10f0de);
      da = constrain(da, 4, 4);
      ellipse(pluto[i].posX, pluto[i].posY, da++, da++);
    }


    for (int i = 0; i < sun.length; i++) {
      sun[i].posX += sun[i].speedX;
      sun[i].posY += sun[i].speedY;

      smooth();
      stroke(#FFFF00);
      fill(#FFFF00);
      da = constrain(da, 30, 30);
      ellipse(sun[i].posX, sun[i].posY, da++, da++);
    }



    for (int i = 0; i < ball.length; i++) {


      ball[i].posX += ball[i].speedX;
      ball[i].posY += ball[i].speedY;

      //Makes balls bounce off wall
      //if (ball[i].posX < 0 || ball[i].posX > width)
      // ball[i].speedX = -ball[i].speedX;
      //
      //if (ball[i].posY < 0 || ball[i].posY > height)
      //   ball[i].speedY = -ball[i].speedY;

      stroke(255);
      strokeWeight(1);
      ellipse(ball[i].posX, ball[i].posY, 1, 1);
    }
    
    
    //END OF PLANETS | STARS | SUN
  }
}

//// END OF CODE ////
