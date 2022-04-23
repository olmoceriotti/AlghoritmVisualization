float values[];

void setup(){
  colorMode(RGB);
  size(800, 500);
  background(0);
  frameRate(240);
  System.out.println(width/10);
  values =  new float[width/10];
  for(int i =  0; i < values.length; i++){
    values[i]  = random(height);
  }
  
}

int index = 0;
int index2 = index + 1;
int colorFill;
void draw(){
    background(0);
   if(index < values.length){
     if(index2 < values.length-index-1){
       float a = values[index2];
       float b = values[index2 + 1];
       if(a > b) {
         swap(values,  index2, index2+1);
       }
       index2++;
     }else{
       index++;
       index2 = 0;
     }
   }else{
     System.out.println("ordinato!");
     noLoop();
   }
   
   for(int i = 0; i <  values.length; i++){
    if(i == index2){
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
