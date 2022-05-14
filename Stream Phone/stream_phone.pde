PImage amazon;
PImage exit;
PImage facebook;
PImage google_translate;
PImage google;
PImage steam;
PImage twitter;
PImage youtube;
void setup() {
  size(925, 475);
  background(255, 255, 255);
  smooth();
  amazon = loadImage("amazon.png");
  exit = loadImage("exit.jpg");
  facebook = loadImage("facebook.png");
  google_translate = loadImage("google translate.png");
  google = loadImage("google.png");
  steam = loadImage("steam.jpg");
  twitter = loadImage("twitter.png");
  youtube = loadImage("youtube.png");
}
void draw() { 
  fill(204, 25, 50);
  rect(25, 25, 200, 200, 20);
  image(youtube, 30, 30, 190, 190);
  fill(70, 88, 147);
  rect(250, 25, 200, 200, 20);
  image(facebook, 255, 30, 190, 190);
  fill(0, 0, 0);
  rect(475, 25, 200, 200, 20);
  image(steam, 480, 30, 190, 190);
  fill(255, 255, 255);
  rect(700, 25, 200, 200, 20);
  image(twitter, 705, 30, 190, 190);
  rect(25, 250, 200, 200, 20);
  image(google, 30, 255, 190, 190);
  rect(250, 250, 200, 200, 20);
  image(amazon, 255, 255, 190, 190);
  rect(475, 250, 200, 200, 20);
  image(google_translate, 480, 255, 190, 190);
  fill(6, 142, 68);
  rect(700, 250, 200, 200, 20);
  image(exit, 705, 255, 190, 190);
} 
void mousePressed() { 
  if (mouseX > 25 && mouseX < 225 && mouseY > 25 && mouseY < 225) {
    link("https://www.youtube.com/?hl=tr&gl=TR");
  }
  if (mouseX > 225 && mouseX < 425 && mouseY > 25 && mouseY < 225) {
    link("https://www.facebook.com/");
  }
  if (mouseX > 450 && mouseX < 650 && mouseY > 25 && mouseY < 225) {
    link("http://store.steampowered.com/");
  }
  if (mouseX > 675 && mouseX < 875 && mouseY > 25 && mouseY < 225) {
    link("https://twitter.com/Twitter?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor");
  }
  if (mouseX > 25 && mouseX < 225 && mouseY > 225 && mouseY < 450) {
    link("https://www.google.com.tr/webhp?hl=en&sa=X&ved=0ahUKEwibncKw2K7TAhVI2ywKHT6MDIsQPAgD");
  }
  if (mouseX > 225 && mouseX < 425 && mouseY > 225 && mouseY < 450) {
    link("https://www.amazon.com/");
  }
  if (mouseX > 450 && mouseX < 650 && mouseY > 225 && mouseY < 450) {
    link("https://translate.google.com/");
  }
  if (mouseX > 675 && mouseX < 875 && mouseY > 225 && mouseY < 450) {
    exit();
  }
}