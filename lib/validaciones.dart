// funcion valida base y altura mayor que 0
void validarBaseAltura(double base, double altura) {
  if (base <= 0 || altura <= 0) {
    throw Exception('Base y altura deben ser mayores que 0.');
  }
}
