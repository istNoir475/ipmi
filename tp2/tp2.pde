// ----------VARIABLES----------- \\
PImage image;

PImage inicio1;

PImage Inicio2;

PImage inicio3;

PImage Knight;

PImage Hornet;

PImage Quirrel;

PImage Hollow;

PImage Destello;

String historia1 = " En lo salvaje mas allas dicen tu nombre con veneracion y \n remordimiento,pues nadie podia domar nuestra almas \n salvajes aunque se acepto el reto, bajo la mas palida \n mirada, aprendiste, cambiamos, instintos  basicos se \n redimieron, un mundo diste a bichos como nunca \n soñaron";

String historia2 = "Aparece el protagonista llamado Caballero/Knight,en su \nbúsqueda para descubrir los secretos del  largamente\nabandonado reino de Hallownest,cuyas profundidades\natraen a los aventureros y valientes con la promesa de \ntesoros o la respuesta amisterios antiguos";

String Caballerito = " Es el protagonista silencioso,un \n recipiente creado a partir del Vacío \n por el Rey Pálido y la Dama Blanca \n para sellar la Infección en Hallownest";

String hornet = " Es la princesa protectora de las ruinas de Hallownest,\n conocida por ser la  hábil guerrera que empuña \n una aguja e hilo. Es hija del Rey Pálido y Herrah la \n Bestia, lo que la convierte en hermanastra del protagonis \n ta";

String quirrel = " Es un viejo explorador que ha \n olvidado su pasado de forma literal y \n ahora busca conocer los misterios \n de Hallownest";

String hollowknight =" Es la vasija que el Rey Pálido eligió para sellar al Destello \n y salvar a Hallownest de La Infección";

String destello =" Es un ser superior y una antigua deidad polilla que \n actúa como el origen y motor de la Plaga que destruyó \n el reino de Hallownest";

PFont fuente;

int tamText;

int posX = 300;

int posY = 100;

int segundos;

int inicioTiempo;

int tamanio;

int pantalla = 0;

void setup() {

  size(640, 480);



  // ----------IMAGENES-----------\\
  image = loadImage("logo.png");

  inicio1 = loadImage("Inicio1.png");

  Inicio2 = loadImage("Inicio2.png");

  inicio3 = loadImage("inicio3.png");

  Knight = loadImage("Knight.png");

  Hornet = loadImage("Hornet.png");

  Quirrel = loadImage("Quirrel.png");

  Hollow = loadImage("Hollow Knight.png");

  Destello = loadImage("Destello.png");
  
  // ----------TEXTO PERSONALIZADO----------- \\
  fuente = loadFont("Book.vlw");

  textFont(fuente, 30);
}

void draw() {

segundos = millis()/1000;

  // ----------PANTALLA INICIO----------- \\
  if (pantalla == 0) {

    background(0, 20, 40);

    image(image, 70, 50, 500, 200);

    fill(255);

    textSize(25);

    text("START", 280, 360);
  }

  // ----------PANTALLA HISTORIA----------- \\
  else if (segundos == 5) {

    pantalla = 1;

    background(0, 20, 40);

    fill(255);

    image(inicio1, 1, 300, 325, 180);

    image(Inicio2, 315, 300, 330, 200);

    textSize(25);

    text("La Historia", 260, 35);

    text(historia1, 1, 80);
  }

  // ----------PANTALLA HISTORIA 2----------- \\
  else if (segundos == 10) {

    pantalla = 2;

    background(0, 20, 40);

    fill(255);

    image(inicio3, 110, 265, 400, 225);

    textSize(25); // La Historia

    text(historia2, 5, 40);
  }

  // ----------PANTALLA PERSONAJES----------- \\
  else if (segundos == 15) {

    pantalla = 3;

    background(0, 20, 40);

    fill(255);

    image(Knight, 1, 120, 250, 250);

    textSize(25);

    text ("Personajes", 260, 35);

    text (Caballerito, 210, 200);

    text("Knight", 90, 400);
  }

  // ----------PANTALLA PERSONAJES 2----------- \\
  else if (segundos == 20) {

    pantalla = 4;

    background(0, 20, 40);

    fill(255);

    image(Hornet, 130, 45, 300, 250);

    textSize(25);

    text(hornet, 1, 325);

    text ("Hornet", 260, 35);
  }

  // ----------PANTALLA PERSONAJES 3----------- \\
  else if (segundos == 25) {

    pantalla = 5;

    background(0, 20, 40);

    fill(255);

    image(Quirrel, 1, 120, 250, 250);

    text(quirrel, 210, 190);

    text("Quirrel", 60, 400);
  }

  // ----------PANTALLA ANTAGONISTAS----------- \\
  else if (segundos == 30) {

    pantalla = 6;

    background(0, 20, 40);

    fill(255);

    text("Antagonistas", 260, 35);

    image(Hollow, 75, 145);

    text(hollowknight, 1, 80, 225);
  }
  // ----------PANTALLA ANTAGONISTAS 2----------- \\
  else if (segundos == 35) {

    pantalla = 7;

    background(0, 20, 40);

    fill(255);

    text("Destello", 260, 35);

    image(Destello, 115, 125);

    text(destello, 1, 75);
  }
  // ----------PANTALLA RESET----------- \\
  else if (segundos == 40) {

    pantalla = 8;

    background(0, 20, 40);

    fill(255);

    text("RESET", 250, 340);
  }
} //draw termina ACA
