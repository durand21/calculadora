import 'dart:math';
import 'constantes.dart';
import 'validaciones.dart';

double areaCirculo(double radio) {
  if (radio <= 0) throw Exception('El radio debe ser mayor que 0.');
  return pii * radio * radio;
}

double areaRectangulo(double base, double altura) {
  // Validar que base y altura sean mayores que 0
  validarBaseAltura(base, altura);
  return base * altura;
}

double areaTriangulo(double base, double altura) {
  // Validar que base y altura sean mayores que 0
  validarBaseAltura(base, altura);
  return (base * altura) / 2;
}

double areaCuadrado(double lado) {
  if (lado <= 0) throw Exception('El lado debe ser mayor que 0.');
  return lado * lado;
}

