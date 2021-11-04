/*
Created by Nigel Dias.
This program creates a Rangoli design
This was created using Processing(Java).
To run this program, download Processing using processing.org/download,extract the folder and run the processing application.
Then,Go to File>Open and open this program.
To Run click on the play button or go to Sketch>Run. 
*/
void setup(){
size(700,700,P3D);
//Orange-Yellow gradient background
for(int i=0;i<=90;i++){
gradient(i*5.5,i*2);
}
//4 Purple border
border(0,0,1,0);
border(0,0,0,1);
border(680,0,0,1);
border(0,680,1,0);
//Spiral in Vertical Purple backgrounds
for(int c=0;c<=1;c++){
for(int i=0;i<35;i++){
spiral(680*c+10,10+20*i,0.005,1,1355,255,255,255);
}}
//Spiral in Horizontal Purple backgrounds
for(int c=0;c<=1;c++){
for(int i=0;i<35;i++){
spiral(10+20*i,680*c+10,0.005,1,1355,255,255,255);
}}

//4 Concentric circles
circles(185,185);
circles(185+330,185);
circles(185,185+330);
circles(185+330,185+330);
//Rotated Square
fill(255,33,33);
rotateZ(radians(45));
square(261.69,-231.69,466.62);
rotateZ(radians(45));
//Dark blue mesh-like shape. Created by taking center of each small circle as a position of big circle(centre of big circle+rcos(theta)orrsin(theta) which is the Parametric form of the big circle).
for(int i=0;i<70;i++){
fill(48,63,159);  
circle(347+200*cos(i*0.09),-347+200*sin(i*0.09),18);
fill(255,33,33);
circle(347+200*cos(i*0.09),-347+200*sin(i*0.09),15);
}
//4 Dark Green ellipse at the corner of the square
fill(56,142,60);
ellipse(165,-350,240,150);
ellipse(350,-165,150,240);
ellipse(535,-350,240,150);
ellipse(350,-535,150,240);
//Red circles present in the green ellipse
fill(255,33,33);
circle(100,-350,90);
circle(595,-350,90);
circle(350,-100,90);
circle(350,-595,90);
//Yellow Spiral present in the red circle which is present in the green ellipse
fill(183,28,28);
spiral(100,-350,0.011,3,4150,255,255,0);
spiral(595,-350,0.011,3,4150,255,255,0);
spiral(350,-100,0.011,3,4150,255,255,0);
spiral(350,-595,0.011,3,4150,255,255,0);
//Blue circle present in the centre in the square. Inscription is added at the botttom of this setup function.
fill(0,145,234);
rotateZ(radians(-45));
circle(490,0,400);
//Green circle present in the blue circle.Inscription is added at the bottom of this setup function.
fill(118,255,3);
circle(490,0,350);
//Purple circle present in the green circle.
fill(170,0,255);
circle(490,0,300);
fill(255,61,0);
//Orange 8 Point Star added in the purple circle.
star(490, 0, 100, 150, 8); 
fill(255,33,33);
//Red 8 Point Star added in the Orange star.
star(490, 0, 70, 120, 8); 
fill(255,171,0);
//Yellow 8 Point Star added in the red star.
star(490, 0, 50, 90, 8); 
fill(213,0,0);
//Maroon 8 Point Star added in the yellow star.
star(490, 0, 30, 60, 8); 
//Pink with white outline circle based design
fill(255,255,255);
circle(490,-15,30);
circle(490,15,30);
circle(475,0,30);
circle(505,0,30);
fill(255,64,129);
circle(490,-15,29);
circle(490,15,29);
circle(475,0,29);
circle(505,0,29);
//White circle at the centre
fill(255,255,255);
circle(490,0,10);
//Inscription(White dots) on the blue circle.Created by taking center of each small circle as a position of big circle(centre of big circle+rcos(theta)orrsin(theta) which is the Parametric form of the big circle).
for(int i=0;i<70;i++){
circle(490+187*cos(i*0.09),187*sin(i*0.09),3);
}
//Inscription(triangles) on the green circle.Created by taking points of each triangle as a position of inner and outer circle(centre of inner/outer circle+rcos(theta)orrsin(theta) which is the Parametric form of the inner/outer circle).
for(int i=0;i<35;i++){
fill(178,255,89);
triangle(490+175*cos(2*i*0.09),175*sin(2*i*0.09),490+150*cos((2*i-1)*0.09),150*sin((2*i-1)*0.09),490+150*cos((2*i+1)*0.09),150*sin((2*i+1)*0.09));
}
rotateZ(radians(45));
//Creating the white lines to join the pink circles.
ellipse(347,-347,50,1);
ellipse(347,-347,1,50);
}
void draw(){}
void gradient(float radius,int color_radius){
//Function to create Orange to yellow radial gradient.This creates the individiual circles filled with a particular shade of orange or yellow.This function is added to a loop above so that it collectively looks like a gradient.
noStroke();  
fill(245,155+color_radius,66);
circle(350,350,(494.9-radius)*2);
}

void border(int x,int y,int w,int l){
//This function creates a Purple strip whose parameters input 0 or 1 to give the vertical and horizontal borders.  
for(int i=0;i<35;i++){
fill(106,27,154);
noStroke();
//This was created by taking a square of 20x20 adding them all to give a strip.
square(x+i*20*w,y+i*20*l,20);
}
}
void circles(int x,int y){
//Function to create the concentric cicles whose parameters input the centre of the circles.
//Created by building the circles from biggest to smallest
float z = 330*18/19;
fill(255,109,0);
//Biggest circle(Orange)
circle(x,y,z-z/9*1);
//Inscription(Yellow circles) present in the biggest circle 
for(float i=0;i<70;i+=1.5){
fill(245,245,66);  
circle(x+130*cos(i*0.09),y+130*sin(i*0.09),18);
fill(255,109,0);
circle(x+130*cos(i*0.09),y+130*sin(i*0.09),15);
}
fill(33,150,243);
circle(x,y,z-z/9*2);
fill(255,82,82);
circle(x,y,z-z/9*3);
fill(245,0,87);
circle(x,y,z-z/9*4);
fill(13,71,161);
circle(x,y,z-z/9*5);
fill(255,61,0);
circle(x,y,z-z/9*6);
//Inscription(Yellow circle) present in the smaller orange circle
for(float i=0;i<70;i+=5){
fill(245,245,66);  
circle(x+43.2*cos(i*0.09),y+43.2*sin(i*0.09),18);
fill(255,61,0);
circle(x+43.2*cos(i*0.09),y+43.2*sin(i*0.09),15);
}
fill(98,0,234);
circle(x,y,z-z/9*7);
fill(255,171,0);
//Smallest circle
circle(x,y,z-z/9*8);
//Inscription(White triangles) present in the pink concentric circles
float tri_width=1.5;
for(float i=0;i<34;i+=tri_width){
fill(248,187,208);
triangle(x+104*cos(2*i*0.09),y+104*sin(2*i*0.09),x+69.3*cos((2*i-tri_width)*0.09),y+69.3*sin((2*i-tri_width)*0.09),x+69.3*cos((2*i+tri_width)*0.09),y+69.3*sin((2*i+tri_width)*0.09));
}
//Inscription(White dots) present in the second smallest concentric circles
for(int i=0;i<70;i+=5){
fill(255,255,255);  
circle(x+26*cos(i*0.09),y+26*sin(i*0.09),3);
}
//Inscription(Dark blue cap) present in the bigger blue circle.
tri_width=1.5;
for(float i=0.5;i<34;i+=tri_width){
fill(13,71,161);
triangle(x+121.3*cos(2*i*0.09),y+121.3*sin(2*i*0.09),x+104*cos((2*i-tri_width)*0.09),y+104*sin((2*i-tri_width)*0.09),x+104*cos((2*i+tri_width)*0.09),y+104*sin((2*i+tri_width)*0.09));
fill(33,150,243);
triangle(x+117*cos(2*i*0.09),y+117*sin(2*i*0.09),x+104*cos((2*i-tri_width)*0.09),y+104*sin((2*i-tri_width)*0.09),x+104*cos((2*i+tri_width)*0.09),y+104*sin((2*i+tri_width)*0.09));

}
//Inscription(light blue cap) present in the smaller dark blue circle.
tri_width=1.5;
for(float i=0.5;i<34;i+=tri_width){
fill(33,150,243);
triangle(x+51.9*cos(2*i*0.09),y+51.9*sin(2*i*0.09),x+69.2*cos((2*i-tri_width)*0.09),y+69.2*sin((2*i-tri_width)*0.09),x+69.2*cos((2*i+tri_width)*0.09),y+69.2*sin((2*i+tri_width)*0.09));
fill(13,71,161);
triangle(x+55.9*cos(2*i*0.09),y+55.9*sin(2*i*0.09),x+69.2*cos((2*i-tri_width)*0.09),y+69.2*sin((2*i-tri_width)*0.09),x+69.2*cos((2*i+tri_width)*0.09),y+69.2*sin((2*i+tri_width)*0.09));

}
}
void star(float x, float y, float r1, float r2, int n) {
//Created using Parametric form of two circles to get the points of the star.Then joining those points to get a star.
float angle = TWO_PI/n;
beginShape();
for (float i = 0; i < TWO_PI; i += angle) {
vertex(x + cos(i)*r2, y + sin(i)*r2);
vertex(x + cos(i+angle/2)*r1, y + sin(i+angle/2)*r1);
}
endShape(CLOSE);
}
void spiral(int x1,int y1,float radius_increment,float ellipse_width,int iter,int red,int g,int b){
//Creating a spiral by gradually increasing the radius of a circle up to a certain point i.e. when the loop ends
float r=0.1;
float theta=0.1;
for(int i=1;i<iter;i++){
strokeWeight(40);
fill(red,g,b);
ellipse(x1+r*cos(theta), y1+r*sin(theta), 1, ellipse_width); 
theta+=0.01;
r+=radius_increment;
}
}
