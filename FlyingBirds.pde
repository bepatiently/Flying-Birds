Bird bird ;
Bird bird_1;
Bird bird_2;
Bird bird_3;
Bird bird_4;

int cloud_location = 0;
int sun_x = 0;
int m = minute(); //minute for 2 minutes obstacle

float x = 1;
float y = 1;
  
float x_1 = 1;
float y_1 = 1;
  
float x_2 = 1;
float y_2 = 1;
  
float x_3 = 1;
float y_3 = 1;
  
float x_4 = 1;
float y_4 = 1;

void setup()
{
  fullScreen(P3D);
  
  bird = new Bird();
  bird_1 = new Bird();
  bird_2 = new Bird();
  bird_3 = new Bird();
  bird_4 = new Bird();
  
  noStroke();
}

void Sun_Moving(){
   
  fill(#FAE30D);
  
  sun_x+=2;
  if(m<120){ // time 2 min
    ellipse(sun_x+1*150,150,150,150);
  }else{
    ellipse(150,150,150,150);
  }
}


void Clouds_Moving(){
  //10 white clouds 
  fill(255);
  cloud_location+=2;

  for(int i=0;i<11;i++){
    
  ellipse(cloud_location+i*250,100,200,100);
  
}
  if(cloud_location>220){

    cloud_location=0;
  
}
  }
  
void draw()
{
  background(#A6C9EA);
 
  
   //First random bird
  if(x == 0){
    if(bird.bx<random(1100,width-100)){ 
      bird.bx++;
    }else{
       x = 1;
    }
  }
   else{
     if(bird.bx>100){
       bird.bx--;
     }else{
        x = 0;
   }
  }
   if(y == 0){
    if(bird.by<random(500,height-100)){ 
      bird.by++;
    }else{
       y = 1;
  }
 } 
   else{
     if(bird.by>100){
       bird.by--;
     }else{
        y = 0;
   }
  }
 
 //Second random bird
  if(x_1 == 0){
    if(bird_1.bx<random(1100,width-100)){ 
      bird_1.bx++;
    }else{
       x_1 = 1;
  }
 }  
   else{
     if(bird_1.bx>100){
       bird_1.bx--;
     }else{
        x_1=0;
   }
  }
     if(y_1==0){
    if(bird_1.by<random(500,height-100)){ 
      bird_1.by++;
    }else{
       y_1=1;
  }
 }
   else{
     if(bird_1.by>100){
       bird_1.by--;
     }
      else{
        y_1=0;
   }
  }
 
  //Third Random Bird
  if(x_2 == 0){
    if(bird_2.bx<random(1100,width-100)){ 
      bird_2.bx++;
    }else{
       x_2 = 1;
  }
 }
   else{
     if(bird_2.bx>100){
       bird_2.bx--;
     }else{
        x_2=0;
   }
  }
     if(y_2==0){
    if(bird_2.by<random(500,height-100)){ 
      bird_2.by++;
    }else{
       y_2=1;
  }
 }
   else{
     if(bird_2.by>100){
       bird_2.by--;
     }else{
        y_2=0;
   }
  }

  
  //Fourth Random Bİrd
  if(x_3 == 0){
    if(bird_3.bx<random(1100,width-100)){ 
      bird_3.bx++;
    }else{
       x_3 = 1;
  }
 }
   else{
     if(bird_3.bx>100){
       bird_3.bx--;
     }else{
        x_3=0;
   }
  }
     if(y_3==0){
    if(bird_3.by<random(500,height-100)) {
      bird_3.by++;
    }else{
       y_3=1;
  }
 }
   else{
     if(bird_3.by>100){
       bird_3.by--;
     }else{
        y_3=0;
   }
  }
  
  //Fifth Random Bird
  if(x_4 == 0){
    if(bird_4.bx<random(1100,width-100)){ 
      bird_4.bx++;
    }else{
       x_4 = 1;
  }
 }
   else{
     if(bird_4.bx>100){
       bird_4.bx--;
     }else{
        x_4=0;
   }
   }
     if(y_4==0){
    if(bird_4.by<random(500,height-100)){ 
      bird_4.by++;
    }else{
       y_4=1;
  }
 }
   else{
     if(bird_4.by>100){
       bird_4.by--;
     }else{
        y_4=0;
   }
  }
  
  
  
  pushMatrix();
  Clouds_Moving();
  Sun_Moving();
  translate(bird.bx,bird.by,bird.bz);
  scale(100);
  bird.drawBird();
  popMatrix();
  
  
   pushMatrix();
  translate(bird_1.bx,bird_1.by,bird_1.bz);
  scale(100);
  bird_1.drawBird();
  popMatrix();
  
    pushMatrix();
  translate(bird_2.bx,bird_2.by,bird_2.bz);
  scale(100);
  bird_2.drawBird();
  popMatrix();
  
    pushMatrix();
  translate(bird_3.bx,bird_3.by,bird_3.bz);
  scale(100);
  bird_3.drawBird();
  popMatrix();
  
  
  pushMatrix();
  translate(bird_4.bx,bird_4.by,bird_4.bz);
  scale(100);
  bird_4.drawBird();
  popMatrix();
}
