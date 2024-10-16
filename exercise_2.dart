//Ejercicio 2: Constructores nombrados y @override

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void detallesPersona() {
    print('Nombre: $nombre, Edad: $edad');
  }
}

class Empleado extends Persona {
  String cargo;

  Empleado(String nombre, int edad, this.cargo) : super(nombre, edad);

  @override
  void detallesPersona() {
    super.detallesPersona();
    print('Cargo: $cargo');
  }
}

void main() {
  var empleado = Empleado('Breana Stone', 28, 'Supervisora');
  empleado.detallesPersona();
}