float values[];

void setup(){
  size(800, 600);
  background(0);
  colorMode(RGB);
  frameRate(240);
  values = new float[width/10];
  for(int i = 0; i < values.length; i++){
    values[i] = random(height);
  }
}


int i = 0;
int j = i +1;
int colorFill;
int min;

void draw(){
  background(0);
  
  if(i < values.length){
    if(j == i +1){
      min = i;
    } 
    System.out.println(min);
    if(j < values.length){
      if(values[j] < values[min]){
        min = j;
        System.out.println("Cambio");
      }
      j++;
    }else{
      swap(values, i, min);
      i++;
      j = i+ 1;
      System.out.println("++");
    }
  }else{
    System.out.println("Ordinato");
    noLoop();
  }
  

  
  
  for(int a = 0; a < values.length; a++){
    if(a == j){
      colorFill = 127;
    }else{
      colorFill = 255;
    }
    bar(a*10, values[a], colorFill);
  }
}


void swap(float v[], int i, int j){
  float app = v[i];
  v[i] = v[j];
  v[j] = app;
}

void bar(int x, float value, int colorFill){
  fill(colorFill);
  stroke(153);
  rect(x, height - value, 10, value);
}
