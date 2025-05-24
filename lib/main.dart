import 'dart:io';
import 'menu_helper.dart';

void main() {
  String? opcion;

  do {
    mostrarMenuPrincipal();

    stdout.write('Seleccione una opción (1-9): ');
    opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        print('Seleccionó: Suma');
        break;
      case '2':
        print('Seleccionó: Resta');
        break;
      case '3':
        print('Seleccionó: Multiplicación');
        break;
      case '4':
        print('Seleccionó: División');
        break;
      case '5':
        print('Seleccionó: Números primos en un rango');
        break;
      case '6':
        print('Seleccionó: Números pares e impares en un rango');
        break;
      case '7':
        print('Seleccionó: Secuencia de Fibonacci');
        break;
      case '8':
        print('Seleccionó: Cálculo de áreas geométricas');
        break;
      case '9':
        print('¡Gracias por usar la calculadora avanzada!');
        break;
      default:
        print('Opción no válida. Intente nuevamente.');
    }

    print('\n');
  } while (opcion != '9');
}
