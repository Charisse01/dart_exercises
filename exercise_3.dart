//Ejercicio 3: Aserciones y Clases Abstractas

import 'dart:io';

abstract class Animal {
  void comer();
}

class Perro extends Animal {
  final int edad;

  Perro(this.edad) {
    assert(edad > 0, 'La edad del perro debe ser mayor que 0');
  }

  @override
  void comer() {
    print('El perro de $edad años está comiendo.');
  }
}

void main() {
  try {
    print('Por favor, ingresa la edad del perro:');
    String? input = stdin.readLineSync();
    int edad = int.parse(input!); 

    if (edad <= 0) {
      throw Exception('La edad del perro debe ser mayor que 0');
    }

    Perro perro1 = Perro(edad);
    perro1.comer(); 

  } catch (e) {
    print('Error: $e'); 
  }
}
