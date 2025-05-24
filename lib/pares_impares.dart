bool esPar(int numero) {
  return numero % 2 == 0;
}

bool esImpar(int numero) {
  return numero % 2 != 0;
}

/// Función para obtener los números pares en un rango
List<int> obtenerParesEnRango(int inicio, int fin) {
  if (inicio > fin) {
    throw Exception('El inicio del rango no puede ser mayor que el final.');
  }

  List<int> pares = []; // Lista para almacenar los números pares
  for (int i = inicio; i <= fin; i++) {
    if (esPar(i)) {
      pares.add(i);
    }
  }
  return pares;
}

/// Función para obtener los números impares en un rango
List<int> obtenerImparesEnRango(int inicio, int fin) {
  if (inicio > fin) {
    throw Exception('El inicio del rango no puede ser mayor que el final.');
  }

  List<int> impares = []; // Lista para almacenar los números impares
  for (int i = inicio; i <= fin; i++) {
    if (esImpar(i)) {
      impares.add(i);
    }
  }
  return impares;
}
