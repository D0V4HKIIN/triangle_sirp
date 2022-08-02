float r = 0.1;
int size = 450;
float[][] points = new float[3][2];
float[] now = new float[2];
float cx;
float cy;

void setup(){
  size(1000,1000);
  frameRate(9999);
  background(0);
  fill(255,0,0);
  stroke(255,0,0);
  
  cx = width/2;
  cy = height/2;
  
  for(int i = 0;i<points.length;i++){
    points[i][0] = sin(((float)i/points.length)*2*PI)*size+cx;
    points[i][1] = cos(((float)i/points.length)*2*PI)*size+cy;
    ellipse(points[i][0],points[i][1],8,8);
  }
  
  fill(255);
  stroke(255);
  
  now[0] = random(0,width);
  now[1] = random(0,height);
  ellipse(now[0],now[1],r,r);
  
}

void draw(){
  for(int j = 0;j<1000;j++){
    fill(255);
  stroke(255);
    int dir = (int) random(0,points.length);
    
    now[0] = (now[0]+points[dir][0])/2;
    now[1] = (now[1]+points[dir][1])/2;
    ellipse(now[0],now[1],r,r);
    
    fill(255,0,0);
    stroke(255,0,0);
    for(int i = 0;i<points.length;i++){
      ellipse(points[i][0],points[i][1],8,8);
    }
  }
}
