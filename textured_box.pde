import shapes3d.utils.*;
import shapes3d.animation.*;
import shapes3d.*;

Box box;
float angleX, angleY, angleZ;

public void setup() {
  size(400, 400, P3D);  
  createBox();
}

void createBox()
{
  box = new Box(this);
  String[] faces = new String[] {
    "front.png", "back.png", "right.png", 
    "left.png", "bottom.png", "top.png"
  };
  box.setTextures(faces);
  box.fill(color(255));
  box.stroke(color(190));
  box.strokeWeight(1.2f);
  box.setSize(100, 50, 150);
  box.drawMode(S3D.TEXTURE | S3D.WIRE);
}

public void draw() {
  background(20);
  
  pushMatrix();
  camera(0, 0, 300, 0, 0, 0, 0, 1, 0);
  angleX += radians(0.913f);
  angleY += radians(0.799f);
  angleZ += radians(1.213f);
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);  
  box.draw();
  popMatrix();  
}
