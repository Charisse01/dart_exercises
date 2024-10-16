//Ejercicio 5: Mixins y Factory constructor

import 'dart:io';

mixin Nadador {
  void nadar() {
    print("Nadando...........");
  }
}

abstract class Animal {
  void hacerSonido();
}

class Delfin extends Animal with Nadador {
  @override
  void hacerSonido() {
    print("El delfín hace un sonido.");
  }
}

class Vehiculo {
  String tipo;

  Vehiculo._(this.tipo);

  factory Vehiculo.crear(String tipo) {
    switch (tipo) {
      case "auto":
        return Vehiculo._("Auto");
      case "moto":
        return Vehiculo._("Moto");
      case "camion":
        return Vehiculo._("Camion");
      case "furgoneta":
        return Vehiculo._("Furgoneta");
      default:
        throw Exception("Tipo de vehículo no reconocido");
    }
  }
}

void main() {
  Delfin delfin = Delfin();
  delfin.hacerSonido(); 
  delfin.nadar(); 

  print("Ingrese el tipo de vehículo que desea crear (auto, moto, camion, furgoneta):");
  String? tipoIngresado = stdin.readLineSync();

  try {
    if (tipoIngresado != null) {
      Vehiculo vehiculo = Vehiculo.crear(tipoIngresado);
      print("Se ha creado un vehículo de tipo: ${vehiculo.tipo}");
    } else {
      print("No se ingresó ningún tipo.");
    }
  } catch (e) {
    print(e); 
  }
}


