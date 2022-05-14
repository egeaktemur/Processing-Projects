void setup() {
  size(550, 500);
  background(0, 0, 0);
  smooth();
}
int sira;
String harfler = "SAATONBIRUCDORTBESALTIYEDIKISEKIZDOKUZUYIEAUONYIRMIOTUZKIRKELLIBIRIKIDORTYEDIALTISEKIZUCBESDOKUZ-EAGECIYORXDXD";
IntList ShouldBeColored;
boolean tamsaat;
/////////////////////////////////////////////////////////
boolean colored(int x,IntList ShouldBeColored){
  if (ShouldBeColored.hasValue(x)){
    return true;
  }
  return false;
}
/////////////////////////////////////////////////////////
void draw() {
  ShouldBeColored = new IntList();
  int min = minute();
  int hour = hour();
  String Smin= str(min);
  if (hour>12){
    hour=hour-12;
  }
  String Shour= str(hour);
  if(Smin.length()==1){
    Smin="0"+Smin;
  }
  if(Shour.length()==1){
    Shour="0"+Shour;
  }
  ///////////////////////////////////////////////////////
  int fmin = int(str(Smin.charAt(0)));
  int smin = int(str(Smin.charAt(1)));
  int fhour = int(str(Shour.charAt(0)));
  int shour = int(str(Shour.charAt(1)));
  ///////////////////////////////////////////////////////
  if (Shour.equals("00")){
    tamsaat=true;
  }
  else{
    tamsaat=false;
  }
  ///////////////////////////////////////////////////////
  if(second()%2==0){
    for (int x = 0; x < 4; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  ///////////////////////////////////////////////////////
  if (fhour==1){
    for (int x = 4; x < 7; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  ///////////////////////////////////////////////////////
  if (shour==1){
    for (int x = 6; x < 9; x = x+1) {
      ShouldBeColored.append(x);
    }
    if(tamsaat==false){
        ShouldBeColored.append(40);
    }
  }
  if (shour==2){
    for (int x = 25; x < 28; x = x+1) {
      ShouldBeColored.append(x);
    }
    if(tamsaat==false){
      ShouldBeColored.append(39);
      ShouldBeColored.append(40);
    }
  }
  if (shour==3){
    for (int x = 9; x < 11; x = x+1) {
      ShouldBeColored.append(x);
    }
    if(tamsaat==false){
        ShouldBeColored.append(36);
      }
  }
  if (shour==4){
    for (int x = 11; x < 15; x = x+1) {
      ShouldBeColored.append(x);
    }
    if(tamsaat==false){
        ShouldBeColored.append(38);
      }
  }
  if (shour==5){
    for (int x = 15; x < 18; x = x+1) {
      ShouldBeColored.append(x);
    }
    if(tamsaat==false){
        ShouldBeColored.append(40);
    }
  }
  if (shour==6){
    for (int x = 18; x < 22; x = x+1) {
      ShouldBeColored.append(x);
    }
    if(tamsaat==false){
        ShouldBeColored.append(39);
        ShouldBeColored.append(40);
      }
  }
  if (shour==7){
    for (int x = 22; x < 26; x = x+1) {
      ShouldBeColored.append(x);
    }
    if(tamsaat==false){
      ShouldBeColored.append(39);
      ShouldBeColored.append(40);
    }
  }
  if (shour==8){
    for (int x = 26; x < 31; x = x+1) {
      ShouldBeColored.append(x);
    }
    if(tamsaat==false){
        ShouldBeColored.append(40);
      }
  }
  if (shour==9){
    for (int x = 33; x < 38; x = x+1) {
      ShouldBeColored.append(x);
    }
    if(tamsaat==false){
        ShouldBeColored.append(38);
      }
  }
  ///////////////////////////////////////////////////////
  if (fmin==1){
    for (int x = 44; x < 46; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (fmin==2){
    for (int x = 46; x < 51; x = x+1) {
      ShouldBeColored.append(x);
      println(ShouldBeColored.size());
    }
  }
  if (fmin==3){
    for (int x = 51; x < 55; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (fmin==4){
    for (int x = 55; x < 59; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (fmin==5){
    for (int x = 59; x < 63; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  ///////////////////////////////////////////////////////
  if (smin==1){
    for (int x = 63; x < 66; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (smin==2){
    for (int x = 66; x < 69; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (smin==3){
    for (int x = 86; x < 88; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (smin==4){
    for (int x = 69; x < 73; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (smin==5){
    for (int x = 88; x < 91; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (smin==6){
    for (int x = 77; x < 81; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (smin==7){
    for (int x = 73; x < 77; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (smin==8){
    for (int x = 81; x < 86; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  if (smin==9){
    for (int x = 91; x < 96; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  ///////////////////////////////////////////////////////
  if (tamsaat==false){
    for (int x = 99; x < 106; x = x+1) {
      ShouldBeColored.append(x);
    }
  }
  textAlign(CENTER);
  fill(255, 255, 255);
  ///////////////////////////////////////////////////////
  for (int y = 1; y < 11; y = y+1) {
    for (int x = 0; x < 11; x = x+1) {
      sira=(y-1)*11+x;
      textSize(height*0.04);
      if(colored(sira,ShouldBeColored)){
        fill(255,0,0);
      }
      text(harfler.charAt(sira), (x+0.5)*width/11, (y-0.5)*height/10);
      fill(255,255,255);
    }
  }
}
