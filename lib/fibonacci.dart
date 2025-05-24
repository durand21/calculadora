List<int> generarFibonacci(int n) {
  if (n <= 0)
    throw Exception('La cantidad de términos debe ser mayor que cero.');

  if (n == 1) return [0];
  if (n == 2) return [0, 1];

  List<int> secuencia = [0, 1];

  for (int i = 2; i < n; i++) {
    secuencia.add(secuencia[i - 1] + secuencia[i - 2]);
  }

  return secuencia;
}
