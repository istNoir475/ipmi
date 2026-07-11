// ----------BOTON START---------- \\
void mousePressed() {

  if (pantalla == 8 ) {
    reset();
  }

  if (pantalla == 0 &&
    mouseX > 250 &&
    mouseX < 390 &&
    mouseY > 330 &&
    mouseY < 380) {

    pantalla = 1;
    segundos = millis();
  }
}

void reset() {
  pantalla = 0;
  t = 0;
}
