import 'dart:io';
import 'menu_helper.dart';
import 'operaciones_basicas.dart';
import 'utils.dart';

void main() {
  String? opcion;

  do {
    mostrarMenuPrincipal(); // Mostrar el menú principal

    stdout.write('Seleccione una opción (1-9): ');
    opcion = stdin.readLineSync(); // Leer la opción del usuario
    if (opcion == null || opcion.isEmpty) {
      print('Opción no válida. Intente nuevamente.');
      continue;
    }

    try {
      switch (opcion) {
        case '1':
          print('\n->Seleccionó: Suma');
          final a = leerNumeroDecimal('Ingrese el primer número: ');
          final b = leerNumeroDecimal('Ingrese el segundo número: ');
          print('Resultado: ${sumar(a, b)}');
          break;
        case '2':
          print('\n->Seleccionó: Resta');
          final a = leerNumeroDecimal('Ingrese el primer número: ');
          final b = leerNumeroDecimal('Ingrese el segundo número: ');
          print('Resultado: ${restar(a, b)}');
          break;
        case '3':
          print('\n->Seleccionó: Multiplicación');
          final a = leerNumeroDecimal('Ingrese el primer número: ');
          final b = leerNumeroDecimal('Ingrese el segundo número: ');
          print('Resultado: ${multiplicar(a, b)}');
          break;
        case '4':
          print('\n->Seleccionó: División');
          final a = leerNumeroDecimal('Ingrese el dividendo: ');
          final b = leerNumeroDecimal('Ingrese el divisor: ');
          print('Resultado: ${dividir(a, b)}');
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
    } catch (error) {
      print('Error: $error');
    }

    print('\n');
  } while (opcion != '9');
}
