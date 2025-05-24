import 'dart:io';

// funcion para parsear un número decimal
double leerNumeroDecimal(String mensaje) {
  stdout.write(mensaje);
  final entrada = stdin.readLineSync();

  final numero = double.tryParse(entrada ?? '');
  if (numero == null) {
    throw FormatException('Entrada inválida. Se esperaba un número decimal.');
  }

  return numero;
}

int leerNumeroEntero(String mensaje) {
  stdout.write(mensaje);
  final entrada = stdin.readLineSync();

  final numero = int.tryParse(entrada ?? '');
  if (numero == null) {
    throw FormatException('Entrada inválida. Se esperaba un número entero.');
  }

  return numero;
}
