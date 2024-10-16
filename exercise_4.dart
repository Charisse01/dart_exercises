//Ejercicio 4: Extensiones y Enumeraciones

import 'dart:io';

enum DiaSemana {
  Lunes,
  Martes,
  Miercoles,
  Jueves,
  Viernes,
  Sabado,
  Domingo
}

extension ParExtension on int {
  bool esPar() {
    return this % 2 == 0;
  }
}

void main() {
  DateTime ahora = DateTime.now();

  DiaSemana dia = DiaSemana.values[ahora.weekday - 1];
  print('Hoy es: $dia');

  print('Ingresa un número:');
  int? numero = int.tryParse(stdin.readLineSync()!);

  if (numero != null) {
    if (numero.esPar()) {
      print('$numero es un número par.');
    } else {
      print('$numero es un número impar.');
    }
  } else {
    print('Por favor, ingresa un número válido.');
  }
}