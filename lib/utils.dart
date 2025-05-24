import 'dart:io';

double leerNumeroDecimal(String mensaje) {
  stdout.write(mensaje);
  final entrada = stdin.readLineSync();

  final numero = double.tryParse(entrada ?? '');
  if (numero == null) {
    throw FormatException('Entrada inválida. Se esperaba un número decimal.');
  }

  return numero;
}
