//Universidad del Desarrollo - Facultad de Diseño - Francisca Urenda

/*
Descripción de lo que hace el programa
*/

ArrayList < Objeto > objeto = new ArrayList < Objeto > ();
Objeto o;

// Descripción
float x, y;
float angle, r;
float a, b, m;
float v0, v1;
color cObjeto, c1, c2, c3, c4, c5, c6;

int g;
int n;
int l;

int va1 = 1;
int va2 = 0;
int va3 = 0;

void setup() {

    size(700, 700);
    background(0);
    // hay 30 objetos en la misma posición siempre
    for (int i = 0; i < 30; i++) {
        o = new Objeto(i);
        objeto.add(o);
    }
}

void draw() {
    // Descripción
    if (va1 == 1) {
        o.circulos(va1);
    }
    // Descripción
    if (va2 == 1) {
        o.arcos(va2);
    }
}


void keyPressed() {
    // Descripción
    if (key == '1') {
        va1 = 1;
        va2 = 0;
        va3 = 0;
    }
    // Descripción
    else if (key == '2') {
        va1 = 0;
        va2 = 1;
        va3 = 0;
    }

    // Descripción
    if (key == 'a') {
        m = -1;
    } else if (key == 'd') {
        m = 1;
    }
    // Descripción
    if (key == 'w') {
        a += 0.0016 + 0.0002;
    } else if (key == 's') {
        a -= 0.0016 - 0.0002;
    }

    // Descripción
    if (keyCode == UP) {
        l += 2;
    } else if (keyCode == DOWN) {
        l += -2;
    }
}
