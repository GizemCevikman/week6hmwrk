import controlP5.*;

float x;
float y;
int sr;
int sg;
int sb;
int sa;
int fr;
int fg;
int fb;
int fa;
int rw;
int rh;
ControlP5 cp5;
ColorPicker cp;
void setup(){
size(800,800);
cp5=new ControlP5(this);
cp5.addSlider("x").setPosition(10,10).setRange(0,width).setSize(200,50);
cp5.addSlider("y").setPosition(10,65).setRange(0,height).setSize(200,50).setValue(height*0.5);
cp5.addSlider("rw").setPosition(10,170).setRange(0,width).setSize(200,50);
cp5.addSlider("rh").setPosition(10,220).setRange(0,height).setSize(200,50).setValue(height*0.5);
  cp = cp5.addColorPicker("picker")
          .setPosition(10, 125)
          .setColorValue(color(158, 108, 10, 108))
          ;
}   
void draw(){
background(255);
noStroke();
ellipseMode(CENTER);
fill(cp.getColorValue());
ellipse(x,y,rw,rh);
sr=150;
sg=150;
sb=150;
sa=255;
fr=5;
fg=5;
fb=5;
fa=255;
rw=30;
rh=30;
}