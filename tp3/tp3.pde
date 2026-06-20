//https://youtu.be/quRQlnYXH1w

PImage Circulitos;

color PrimerColor;

color SegundoColor; 
 
color ColorFondo;

int TemaActual = 0;

float TamCirculo = 32;

void setup(){

size(800, 400);
  
Circulitos = loadImage("Circulitos.png");
  
image(Circulitos, 0, 0, 400, 400);
  
AplicarTema();

}

color ColorAleatorio(int maximo) { // Funcion que recibe un rango maximo para generar colores aleatorios, retorna un color

  int rojo = int(random(maximo));
  int verde = int(random(maximo));
  int azul = int(random(maximo));

  return color(rojo, verde, azul);

}

void AplicarTema() { // Funcion donde se configuran los distintos temas del patron, cambiando el color del fondo y de los circulos

  if (TemaActual == 0) {
    ColorFondo = #AC2313; // Rojo
    PrimerColor = #489275; // Verde
    SegundoColor = #EAEAEA; // Blanco

  } else if (TemaActual == 1) {
    ColorFondo = #65A9E2; // Celeste
    PrimerColor = #FCB114; // Amarillo
    SegundoColor = #FEFEFE; // Blanco

  } else if (TemaActual == 2) {
    ColorFondo = #000000; // Negro
    PrimerColor = #FF0000; // Rojo
    SegundoColor = #FFFFFF; // Blanco
  
  } else if (TemaActual == 3) {
    ColorFondo = ColorAleatorio(256);
  
    PrimerColor = ColorAleatorio(256);
  
    SegundoColor = ColorAleatorio(256);
  }
}



void draw() {
  
background(ColorFondo);

image(Circulitos, 0, 0, 400, 400);

CirculosSeparados(PrimerColor, SegundoColor);

}

void CirculosSeparados(color PrimerColor, color SegundoColor) { // Es una funcion que recibe dos parametros de tipo color para dibujar los circulos
  
  int FIlasColumnasTotales = 7; // Define el tamaño del cuadrado
  
  
  for(int i = 0; i < FIlasColumnasTotales; i++) { // Ciclo FOR para las filas

    for (int j = 0; j < FIlasColumnasTotales; j++) { // Ciclo FOR para las columnas, donde se dibujan los ciruculos
      noFill(); 
      
      color ColorActual;

      if ((i + j) % 2 == 0) { // Condicion para el color alternado del patron
        ColorActual = PrimerColor;
      } else {
        ColorActual = SegundoColor;
      }
      
      color PesoActual;

      if ((i + j) % 2 == 0) { // Condicion para encontrar el peso del circulo
        PesoActual = 2;
      } else {
        PesoActual = 1;
      }
      

      stroke(ColorActual);
      strokeWeight(PesoActual);
        
      circle(428 + j*58, 27 + i*58, TamCirculo);
      
    }
  }


}


void mouseClicked() { // Evento click para ir alternando entre distintos temas

  TemaActual++;

  if (TemaActual > 3) {
    TemaActual = 0;
  }

  AplicarTema();
}

void keyPressed() { // Evento teclado para reiniciar e ir a las variables originales con la tecla R

  if (key == 'r' || key == 'R') {
    TemaActual = 0;
    AplicarTema();
    println("Tema reiniciado");
  }

}

void mousePressed() {
 TamCirculo = 20;

}

void mouseReleased() {
 TamCirculo = 32;

}
