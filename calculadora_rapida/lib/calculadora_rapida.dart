import 'dart:io';

Map<int, String> superIndice = {
  0: '⁰',
  1: '¹',
  2: '²',
  3: '³',
  4: '⁴',
  5: '⁵',
  6: '⁶',
  7: '⁷',
  8: '⁸',
  9: '⁹'
};

String mostrarNumero(double numero) {
  return (numero % 1 == 0) ? numero.toInt().toString() : numero.toString();
}

double pedirDouble(mensaje) {
  print(mensaje);
  return double.parse(stdin.readLineSync()!);
}

int pedirInt(mensaje) {
  print(mensaje);
  return int.parse(stdin.readLineSync()!);
}