int sumarEdades(Map<String, int> personas) {
  int suma = 0;
  personas.forEach((nombre, edad) {
    suma += edad;
  });
  return suma;
}

int encontrarEdadMinima(Map<String, int> personas) {
  return personas.values.reduce((a, b) => a < b ? a : b);
}

int encontrarEdadMaxima(Map<String, int> personas) {
  return personas.values.reduce((a, b) => a > b ? a : b);
}