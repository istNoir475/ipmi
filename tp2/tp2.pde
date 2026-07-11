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

int segundos, t;

int t_pantalla = 1000;

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
  segundos = millis();
  t = 0;
}

void draw() {

  if (pantalla !=0) {
    t = millis() - segundos;
  }

  // ----------PANTALLA INICIO----------- \\
  if (pantalla == 0) {

    background(0, 20, 40);

    image(image, 70, 50, 500, 200);

    fill(255);

    textSize(25);

    text("START", 280, 360);
  }

  // ----------PANTALLA HISTORIA----------- \\
  else if (t <= t_pantalla *10) {

    pantalla = 1;

    background(0, 20, 40);

    fill(255);

    if (t < 2000) {
      image(inicio1, 1, 700 - t*0.20, 325, 180);
    } else {
      image(inicio1, 1, 300, 325, 180);
    }

    if (t < 2000) {
      image(Inicio2, 315, 700 - t*0.20, 325, 180);
    } else {
      image(Inicio2, 315, 300, 330, 180);
    }

    textSize(25);

    if (t < 2000) {
      text("La Historia", -200 + t*0.23, 35);
    } else {
      text("La Historia", 260, 35);
    }


    if (t < 2000) {
      text(historia1, -500 + t*0.25, 80);
    } else {
      text(historia1, 5, 80);
    }
  }

  // ----------PANTALLA HISTORIA 2----------- \\
  else if (t >= t_pantalla *10 && t < t_pantalla *20) {

    pantalla = 2;

    background(0, 20, 40);

    fill(255);

    if (t<2000+t_pantalla *10) {

      image(inicio3, 110, 665-(t-t_pantalla *10)*0.20, 400, 225);
    } else {

      image(inicio3, 110, 265, 400, 225);
    }

    textSize(25); // La Historia

    if (t<2000+t_pantalla *10) {

      text(historia2, 400-(t-t_pantalla *10)*0.20, 40);
    } else {

      text(historia2, 5, 40);
    }
  }


  // ----------PANTALLA PERSONAJES----------- \\
  else if (t >= t_pantalla *20 && t < t_pantalla *30) {

    pantalla = 3;

    background(0, 20, 40);

    fill(255);

    if (t < 2000 + t_pantalla *20) {

      image(Knight, -400 + (t - t_pantalla *20) * 0.20, 120, 250, 250);
    } else {

      image(Knight, 1, 120, 250, 250);
    }

    textSize(25);

    if (t < 2000 + t_pantalla *20) {

      text("Personajes", -145 + (t - t_pantalla *20)* 0.20, 35);
    } else {

      text ("Personajes", 260, 35);
    }

    if (t < 2000 + t_pantalla *20) {

      text(Caballerito, 605 - (t - t_pantalla *20)* 0.20, 200);
    } else {

      text (Caballerito, 210, 200);
    }

    if (t < 2000 + t_pantalla *20) {

      text("Knight", -310 + (t - t_pantalla *20)* 0.20, 400);
    } else {

      text("Knight", 90, 400);
    }
  }

  // ----------PANTALLA PERSONAJES 2----------- \\
  else if (t >= t_pantalla *30 && t < t_pantalla *40) {

    pantalla = 4;

    background(0, 20, 40);

    fill(255);

    if (t < 2000 + t_pantalla *30) {

      image(Hornet, 525 - (t - t_pantalla *30)* 0.20, 45, 300, 250);
    } else {

      image(Hornet, 130, 45, 300, 250);
    }
    textSize(25);

    if (t < 2000 + t_pantalla *30) {

      text(hornet, -395 + (t - t_pantalla *30) * 0.20, 325);
    } else {

      text(hornet, 1, 325);
    }

    if (t < 2000 + t_pantalla *30) {

      text("Hornet", -140 + (t - t_pantalla *30) * 0.20, 35);
    } else {

      text ("Hornet", 260, 35);
    }
  }



  // ----------PANTALLA PERSONAJES 3----------- \\
  else if (t >= t_pantalla *40 && t < t_pantalla *50) {

    pantalla = 5;

    background(0, 20, 40);

    fill(255);

    if (t < 2000 + t_pantalla *40) {

      image(Quirrel, -395 + (t - t_pantalla *40) * 0.20, 120, 250, 250);
    } else {

      image(Quirrel, 1, 120, 250, 250);
    }

    if (t < 2000 + t_pantalla *40) {

      text(quirrel, 605 - (t - t_pantalla *40) * 0.20, 190);
    } else {

      text(quirrel, 210, 190);
    }

    if (t < 2000 + t_pantalla *40) {

      text("Quirrel", -340 + (t - t_pantalla *40) * 0.20, 400);
    } else {

      text("Quirrel", 60, 400);
    }
  }

  // ----------PANTALLA ANTAGONISTAS----------- \\
  else if (t >= t_pantalla *50 && t < t_pantalla *60) {

    pantalla = 6;

    background(0, 20, 40);

    fill(255);

    if (t < 2000 + t_pantalla *50) {

      text("Antagonistas", -140 + (t - t_pantalla *50) * 0.20, 35);
    } else {

      text("Antagonistas", 260, 35);
    }

    if (t < 2000 + t_pantalla *50) {

      image(Hollow, 490 - (t - t_pantalla *50) *0.20, 145);
    } else {

      image(Hollow, 90, 145);
    }

    if (t < 2000 + t_pantalla *50) {

      text(hollowknight, -400 + (t - t_pantalla *50) * 0.20, 80);
    } else {


      text(hollowknight, 1, 80, 225);
    }
  }
  // ----------PANTALLA ANTAGONISTAS 2----------- \\
  else if (t >= t_pantalla *60 && t < t_pantalla *70) {

    pantalla = 7;

    background(0, 20, 40);

    fill(255);


    if (t < 2000 + t_pantalla *60) {

      text("Destello", -130 + (t - t_pantalla *60) *0.20, 35);
    } else {

      text("Destello", 270, 35);
    }

    if (t < 2000 + t_pantalla *60) {

      image(Destello, 520 - (t - t_pantalla *60) * 0.20, 125);
    } else {

      image(Destello, 125, 125);
    }

    if (t < 2000 + t_pantalla *60) {

      text(destello, -400 + (t - t_pantalla *60)* 0.20, 75);
    } else {


      text(destello, 1, 75);
    }
  }


  // ----------PANTALLA RESET----------- \\
  else if (t >= t_pantalla *70 && t < t_pantalla *80) {

    pantalla = 8;

    background(0, 20, 40);

    fill(255);

    text("RESET", 280, 240);
  }
} //draw termina ACA
