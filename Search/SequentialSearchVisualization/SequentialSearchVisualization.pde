float values[];
int random;
int colorFill;
int j = 0;
void setup(){
  colorMode(RGB);
  size(800, 500);
  background(0);
  frameRate(4);
  values =  new float[width/10];
  for(int i =  0; i < values.length; i++){
    values[i]  = random(height);
  }
  random = (int)(Math.random()*values.length);
}

boolean trovato = false;

void draw(){
  if(values[j] == values[random] || j == values.length){
    trovato = true;
  }else{
    j++;
  }
  
  for(int i = 0; i <  values.length; i++){
    if(i <= j){
      colorFill = 127;
    }else{
      colorFill = 255;
    }
    if(trovato && values[i] == values[j]){
      colorFill = -1;
    }
    bar(i*10, values[i], colorFill);
  }
  if(trovato){
    noLoop();
  }
}

void bar(int x, float value, int colorFill){
  if(colorFill == -1){
    fill(255,0,0);
  }else{
    fill(colorFill);
  }
  stroke(153);
  rect(x, height - value, 10, value);
}
