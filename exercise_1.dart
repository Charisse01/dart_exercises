//Ejercicio 1: Clases y Objetos

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void detallesPersona() {
    print('Nombre: $nombre');
    print('Edad: $edad');
  }
}

void main() {
  Persona person = Persona('Clarisa', 23);
  person.detallesPersona();
}