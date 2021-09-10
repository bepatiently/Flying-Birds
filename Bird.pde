class Bird
{
  float bx, by, bz;
  PImage imgWing;
  
  public Bird() 
  {
    bx = random(width);
    by = random(height);
    bz = random(-100, 100);
    imgWing = loadImage("wing.gif");
  }
  
  void drawBird()
  {
    pushMatrix();
    pushMatrix();
    rotateZ(radians(angle));
    angle += angleDir;
    if(angle > 45 || angle < -45)
      angleDir *= -1;
    drawOneWing();
    popMatrix();
    pushMatrix();
    scale(-1, 1, 1);
    rotateZ(radians(angle));
    angle += angleDir;
    if(angle > 45 || angle < -45)
      angleDir *= -1;
    drawOneWing();
    popMatrix();
    popMatrix();
  }
  int angle = 0;
  int angleDir = 1;
  void drawOneWing()
  {
    beginShape(QUADS);
    texture(imgWing);
    vertex(-1, 0, 0, 0, 0);
    vertex(0, 0, 0, 202, 0);
    vertex(0, 0, 1, imgWing.width, imgWing.height);
    vertex(-1, 0, 1, 0, 183);
    endShape();
  }
}
