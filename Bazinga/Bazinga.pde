void setup() {

  size(500, 550);
  daireX = width / 2;
  daireY = height / 2;
  fill(0, 0, 255);
  stroke(0, 0, 255);
  cursor(CROSS);
  smooth();
}


int daireX = 0;
int daireY = 0;
int cap = 50;
int kirmizi = 255;
int yesil = 255;
int mavi = 255;
int can = 1;
int level = 1;
int t =20;
int p =20;
float zaman =60;


void draw() {
  background(kirmizi, yesil, mavi);
  if (can > 0 && level<20) {
    zaman=zaman-1.0/frameRate;
  }
  if (zaman<0) {
    can=0;
  }
  if (can > 0) {
    if (level >= 20) {
      cursor(CROSS);
      text("Helal be!", width/2-45, height/2-100);
      rect(40, 300, 150, 150);
      rect(310, 300, 150, 150);
      fill(0, 255, 0);
      textSize (32);
      text("TEKRAR", 55, 375);
      fill(255, 0, 0);
      textSize (20);
      text("SGL CNM YA ;(", 320, 373);
    } else if (level >= 10) {
      ellipse(daireX, daireY, cap, cap);
      noCursor();
      line(mouseX, 0, mouseX, t);
      line(0, mouseY, p, mouseY);
    } else {
      ellipse(daireX, daireY, cap, cap);
    }
  } else {
    cursor(CROSS);
    fill(0, 0, 255);
    text("Learn How To Play!", width/2-80, height/2-100);
    textSize(60);
    text(level, width/2-30, height/2);
    rect(40, 300, 150, 150);
    rect(310, 300, 150, 150);
    fill(0, 255, 0);
    textSize (32);
    text("Again?", 55, 375);
    fill(255, 0, 0);
    textSize (20);
    text("No Thanks ;(", 320, 373);
  }
  kirmizi = kirmizi + 2;
  yesil = yesil + 2;
  mavi = mavi + 2;
  fill(255, 0, 0);
  rect(0, height-50, width, 50);
  fill(0, 0, 255);
  textSize(25);
  text("Time: " + (int)zaman, 20, height-10);
  text("Health: " + can, 200, height-10);
  text("LEVEL: " + level, 350, height-10);
}


void mousePressed() {
  if (can > 0 && level < 20) {
    if (dist(daireX, daireY, mouseX, mouseY) < cap/2) {
      daireX = int(random(cap/2, width- 50 - cap/2));
      daireY = int(random(cap/2, height- 50 - cap/2));
      cap = cap - 2;
      kirmizi = 0;
      yesil = 0;
      level = level + 1;
      t = t - 1 ;
      p = p - 1 ;
    } else {
      yesil = 0;
      mavi = 0;
      can = can - 1;
    }
  } else if (can <= 0 || level >=20 ) {
    if (mouseX > 40 && mouseX < 190 && mouseY > 300 && mouseY < 450) {
      can=1;
      level = 1;
      zaman = 60;
      cap   = 50;
      t     = 20; 
      p     = 20;
    }
    if (mouseX > 310 && mouseX < 460 && mouseY > 300 && mouseY < 450) {
      exit();
    }
  }
}
