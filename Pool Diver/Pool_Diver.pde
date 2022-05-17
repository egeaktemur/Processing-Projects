void setup() {
  size(1500, 1000);
  background(255);
  a = loadImage("a.jpg");
  b = loadImage("b.png");
}

float angle = 90;
float x = 475;
float y = 650;
float hizangle = 0;
float hizy =0;
float hizx =0;
float yercekimi =0;
int durum =0;
int tramplenY =800;
int tramplenAraMesafesi = 100;
int tramplenYatayMesafesi = 60 ;
int seviye =0;
int level = 0;
PImage a;
PImage b;

float score=0;

void draw() {
  background(255);
  translate(x, y);

  rotate(radians(angle));
  
  if (seviye>7) {
    seviye=0;
  }
  if (durum == 2) {
    image( b, -30, -80, 140, 90);
  } else {    
    image( a, -30, -80, 186, 57);
  }
  rotate(-radians(angle));
  translate(-x, -y);
  fill(0);
  textSize (60);
  for (int i = 0; i < 8; i=i+1) {
    rect(0, tramplenY - i * tramplenAraMesafesi, 545 - i * tramplenYatayMesafesi, 30);
  }

  noStroke();
  text("Level: "+level, 25, height-100);
  text("Score: "+score, 300, height-100);
  fill(0, 0, 255);
  rect(0, height-80, width, height);
  angle = angle + hizangle;
  angle = angle %360;
  x=x+hizx;
  y=y+hizy;
  hizy=hizy+yercekimi;

  if (durum == 1 || durum == 2) {
    if (y>=height-80&& (angle%180) < 110 && (angle%180) > 70) {
      level+=1;
      score+=angle;
      durum = 3;
      seviye = seviye + 1;
      hizy =0;
      hizx=0;
      angle = 90;
      hizangle = 0;
      yercekimi = 0;
    }
    if (y>=height-80&& ((angle%180) > 110 || (angle%180) < 70)) {
      durum = 4;
      hizy =0;
      hizx=0;
      angle = 90;
      hizangle = 0;
      yercekimi = 0;
    }
  }

  if (durum == 3) {
    fill(0,0,0);
    textSize (32);
    fill(78, 146, 255);
    rect(width/2-170, height/2, 150, 150);
    rect(width/2+20, height/2, 150, 150);
    fill(0, 255, 0);
    text("Next", width/2-160, height/2+80);
    text("Next One", width/2-65, height/2-100);
    fill(255, 0, 0);
    textSize (20);
    text("No Thanks ;(", width/2+30, height/2+80);
    fill(128, 0, 0);
  }
  if (durum == 4) {
    level = 0;
    fill(0,0,0);
    score=0;
    textSize (32);
    fill(78, 146, 255);
    rect(width/2-170, height/2, 150, 150);
    rect(width/2+20, height/2, 150, 150);
    fill(0, 255, 0);
    text("Again", width/2-160, height/2+80);
    fill(255, 0, 0);
    textSize (20);
    text("No Thanks ;(", width/2+30, height/2+80);
    text("Nice Try", width/2-45, height/2-100);
    fill(128, 0, 0);
    seviye=0;
  }
}
void mousePressed() {
  if (durum == 0) {
    hizx=hizx+2.5+seviye*0.5;
    hizy=hizy-5;
    yercekimi=0.1;
    durum = 1;
  } else if (durum == 1) {
    hizangle = 3+pow(level,1/3.);
    durum = 2;
  } else if (durum == 3 || durum == 4) {
    if (mouseX > width/2+20 && mouseX < width/2+170 && mouseY > height/2-75 && mouseY < height/2+75) {
      exit();
    }
    if (mouseX > width/2-170 && mouseX < width/2-20 &&  mouseY > height/2-75 && mouseY < height/2+75) {
      x=475 - seviye * tramplenYatayMesafesi;
      y=650 - seviye * tramplenAraMesafesi;
      durum = 0;
      hizy =0;
      hizx=0;
      angle = 90;
      hizangle = 0;
      yercekimi = 0;
    }
  }
}
void mouseReleased() {
  if (durum == 2) { 
    hizangle = 0;
    durum = 1;
  }
}
