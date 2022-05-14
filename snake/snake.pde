void setup() {
  background (255);
  size(800, 850);
}
int[] coordinate ={0,0};
int[] xcoordinates = {0};
int[] ycoordinates = {0};
int hiz=10;
float zaman=10;
int way=1;
int Length=1;
int randomcoordinateX = int(random(0,15));
int randomcoordinateY = int(random(0,15));
void draw() {
  background (255);
  fill(170, 1, 20);
  rect(randomcoordinateX*50-5, randomcoordinateY*50-5, 60, 60);
  
  line(0,50,800,50);
  for(int i =1;i<16;i++){
    line(50*i,0,50*i,800);
    line(0,50*(i+1),800,50*(i+1));
  }
  delay(200);
  zaman=zaman-1.0/frameRate;
  if (way == 0) {
    if(coordinate[1]>0){
      coordinate[1]=coordinate[1]-50;
    }
    else{
      coordinate[1]=750;
    }
  }
  else if (way == 1) {
    
    if(coordinate[0]<750){
      coordinate[0]=coordinate[0]+50;
    }
    else{
      coordinate[0]=0;
    }
  }
  else if (way == 2) {
    if(coordinate[1]<750){
      coordinate[1]=coordinate[1]+50;
    }
    else{
      coordinate[1]=0;
    }
  }
  else if (way == 3) {
    if(coordinate[0]>0){
      coordinate[0]=coordinate[0]-50;
    }
    else{
      coordinate[0]=750;
    }
  }
  
  if(randomcoordinateX==coordinate[0]/50 && randomcoordinateY==coordinate[1]/50){
    randomcoordinateX = int(random(0,15));
    randomcoordinateY = int(random(0,15));
    Length++;
    xcoordinates=append(xcoordinates,coordinate[0]);
    ycoordinates=append(ycoordinates,coordinate[1]);
  }
  else{
    for(int i=1;i<Length;i++){
      xcoordinates[i-1]=xcoordinates[i];
      ycoordinates[i-1]=ycoordinates[i];
    }
    xcoordinates=shorten(xcoordinates);
    ycoordinates=shorten(ycoordinates);
    xcoordinates=append(xcoordinates,coordinate[0]);
    ycoordinates=append(ycoordinates,coordinate[1]);
  }
  fill(66,118,70);
  for(int i=0;i<Length-1;i++){
    for(int j=0;j<i;j++){
       if(xcoordinates[i]==xcoordinates[j]&&ycoordinates[i]==ycoordinates[j]){
         exit();
       }
    }
    rect(xcoordinates[i],ycoordinates[i],50,50);
  }
  rect(coordinate[0]-5,coordinate[1]-5,60,60);
  fill(0,0,0);
  rect(coordinate[0]+5,coordinate[1]+5,40,40);
  textSize(30);
  text("Score: "+Length, 15, 835); 
}

void keyPressed() {
  if (keyPressed) {
    if ((key == 'w' || key == 'W' || keyCode == UP)&& coordinate[1]>0 && way!=2) {
      way =0;
    }
    if ((key == 'd' || key == 'D' || keyCode == RIGHT)&& coordinate[0]<750 && way!=3) {
      way=1;
    }
    if ((key == 's' || key == 'S' || keyCode == DOWN)&& coordinate[1]<750 && way!=0) {
      way=2;
    }
    if ((key == 'a' || key == 'A' || keyCode == LEFT)&& coordinate[0]>0 && way!=1) {
      way=3;
    }
  }
}
