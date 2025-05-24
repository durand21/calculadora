bool esPrimo(int numero) {
  if (numero <= 1) return false;
  if (numero == 2) return true;
  if (numero % 2 == 0) return false;

  for (int i = 3; i * i <= numero; i += 2) {
    if (numero % i == 0) return false;
  }

  return true;
}

List<int> obtenerPrimosEnRango(int inicio, int fin) {
  if (inicio > fin) {
    throw Exception('El inicio del rango no puede ser mayor que el final.');
  }

  List<int> primos = []; // Lista para almacenar los números primos
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      primos.add(i);
    }
  }
  return primos;
}
