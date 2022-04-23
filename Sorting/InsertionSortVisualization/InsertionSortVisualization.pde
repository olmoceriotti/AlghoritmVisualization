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

int i  = 1;
int j = i - 1;
float temp;
int colorFill;

void draw(){
  background(0);
  if(i < values.length){
    if(j == i-1){
      temp = values[i];
    }
    System.out.println(temp);
    if(j >= 0 && values[j] > temp){
      values[j +1] = values[j];
      //swap(values, j+1, j);
      j--;
    }else{
      values[j+1] = temp;
      i++;
      j = i - 1;
      System.out.println("++");
    }
  }else{
    System.out.println("Ordinato");
    noLoop();
  }
  
  

  
  
  for(int i = 0; i < values.length; i++){
    if(this.i == i){
      colorFill = 127;
    }else{
      colorFill = 255;
    }
    bar(i*10, values[i], colorFill);
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
