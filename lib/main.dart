import 'dart:io';
import 'menu_helper.dart';
import 'operaciones_basicas.dart';
import 'utilidades.dart';
import 'numeros_primos.dart';
import 'pares_impares.dart';
import 'fibonacci.dart';
import 'package:calculadora/areas_geometricas.dart';
import 'areas_geometricas.dart';

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
          print('\n->Seleccionó: Números primos en un rango');
          final inicio = leerNumeroEntero('Ingrese el inicio del rango: ');
          final fin = leerNumeroEntero('Ingrese el fin del rango: ');

          final primos = obtenerPrimosEnRango(inicio.toInt(), fin.toInt());
          if (primos.isEmpty) {
            print(
              'No se encontraron números primos en el rango $inicio a $fin.',
            );
          } else {
            print(
              'Números primos en el rango $inicio a $fin: ${primos.join(', ')}',
            );
            print('Total de números primos: ${primos.length}');
          }
          break;
        case '6':
          print('\n->Seleccionó: Números pares e impares en un rango');
          final inicio = leerNumeroDecimal('Ingrese el inicio del rango: ');
          final fin = leerNumeroDecimal('Ingrese el fin del rango: ');
          final pares = obtenerParesEnRango(inicio.toInt(), fin.toInt());
          final impares = obtenerImparesEnRango(inicio.toInt(), fin.toInt());
          if (pares.isEmpty) {
            print(
              'No se encontraron números pares en el rango $inicio a $fin.',
            );
          } else {
            print(
              'Números pares en el rango $inicio a $fin: ${pares.join(', ')}',
            );
            print('Total de números pares: ${pares.length}');
          }
          if (impares.isEmpty) {
            print(
              'No se encontraron números impares en el rango $inicio a $fin.',
            );
          } else {
            print(
              'Números impares en el rango $inicio a $fin: ${impares.join(', ')}',
            );
            print('Total de números impares: ${impares.length}');
          }
          break;
        case '7':
          print('\n->Seleccionó: Secuencia de Fibonacci');
          final cantFibonacci = leerNumeroEntero(
            'Ingrese la cantidad de términos: ',
          );
          final secuenciaFibonacci = generarFibonacci(cantFibonacci.toInt());
          if (secuenciaFibonacci.isEmpty) {
            print('No se generó la secuencia de Fibonacci.');
          } else {
            print(
              'Secuencia de Fibonacci con $cantFibonacci términos: ${secuenciaFibonacci.join(', ')}',
            );
            print('Total de términos: ${secuenciaFibonacci.length}');
          }
          break;
        case '8':
          print('''
              --- CÁLCULO DE ÁREAS GEOMÉTRICAS ---
              1. Círculo
              2. Rectángulo
              3. Triángulo
              4. Cuadrado
              5. Volver al menú principal
              ''');

          stdout.write('Seleccione una figura (1-5): ');
          final figura = stdin.readLineSync();

          try {
            switch (figura) {
              case '1':
                print('--- Cálculo del área de un círculo ---');
                final radio = leerNumeroDecimal(
                  'Ingrese el radio del circulo: ',
                );
                final area = areaCirculo(radio);
                print(
                  'Área del círculo = ${area.toStringAsFixed(2)} unidades cuadradas',
                );
                break;
              case '2':
                print('--- Cálculo del área de un rectángulo ---');
                final base = leerNumeroDecimal(
                  'Ingrese la base del rectangulo: ',
                );
                final altura = leerNumeroDecimal(
                  'Ingrese la altura del rectangulo: ',
                );
                final area = areaRectangulo(base, altura);
                print(
                  'Área del rectángulo = ${area.toStringAsFixed(2)} unidades cuadradas',
                );
                break;
              case '3':
                print('--- Cálculo del área de un triángulo ---');
                final base = leerNumeroDecimal('Ingrese la base: ');
                final altura = leerNumeroDecimal('Ingrese la altura: ');
                final area = areaTriangulo(base, altura);
                print(
                  'Área del triángulo = ${area.toStringAsFixed(2)} unidades cuadradas',
                );
                break;
              case '4':
                print('--- Cálculo del área de un cuadrado ---');
                final lado = leerNumeroDecimal(
                  'Ingrese la longitud del lado: ',
                );
                final area = areaCuadrado(lado);
                print(
                  'Área del cuadrado = ${area.toStringAsFixed(2)} unidades cuadradas',
                );
                break;
              case '5':
                print('Volviendo al menú principal...');
                break;
              default:
                print('Opción no válida en el submenú de áreas.');
            }
          } catch (error) {
            print('Error: $error');
          }
          break;
        case '9':
          print(
            '¡Gracias por usar la calculadora avanzada! Atte. Rommen Durand',
          );
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
