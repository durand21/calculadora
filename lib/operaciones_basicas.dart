double sumar(double a, double b) => a + b;

double restar(double a, double b) => a - b;

double multiplicar(double a, double b) => a * b;

double dividir(double a, double b) {
  if (b == 0) throw Exception('Error: División por cero no permitida.');
  return a / b;
}
