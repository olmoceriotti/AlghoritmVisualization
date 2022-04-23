float values[];
int random;
int colorFill;
int fine;
int inizio = 0;
int m;
void setup(){
  colorMode(RGB);
  size(800, 500);
  background(0);
  frameRate(1);
  values =  new float[width/10];
  fine = values.length - 1;
  m = (inizio + fine)/2;
  for(int i =  0; i < values.length; i++){
    values[i]  = random(height);
  }
  random = (int)(Math.random()*values.length);
}

boolean trovato = false;

void draw(){
  if(m == random || inizio > fine){
    if(m == random){
      trovato = true;
    }else{
      System.out.println("Non presente");
      System.out.println(m);
      noLoop();
    }
  }else{
    if(m > random){
      fine = m;
    }else{
      inizio = m;
    }
    m = (inizio + fine)/2;
  }
  for(int i = 0; i <  values.length; i++){
    if(i <= fine && i >= inizio){
      colorFill = 255;
    }else{
      colorFill = 127;
    }
    if(trovato && i == m){
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
