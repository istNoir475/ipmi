PImage img;

void setup() {
  size(800, 400);
  img = loadImage("Planetario.png");
}

void draw() {
noStroke(); 
background(#67D5FF); //cielo
image(img, 0, 0, width/2, height);
fill(#818181);
circle( 600, 140, 170 );
fill(#FFFFFF);
rect(500, 200, 200, 40);
rect(575, 240, 50, 40);
fill(#00B942); // verde claro
rect(400, 300, 800, 50);
fill(#07010A); //negro
rect(400, 350, 800, 50);
fill(#FFFFFF); // negro
triangle(496, 300, 575, 240, 575, 300);
triangle(700, 300, 625, 240, 625, 300);






fill( 0 );
textSize( 24 );
text( mouseX + " / " + mouseY, mouseX, mouseY );

println( mouseX + " / " + mouseY );
println( frameRate );  //devuelve fps actual
println( frameCount );  //cuenta la cantidad de frames desde que inicio el programa
println("SALTO -esto es un texto-");
}



 
  
  
