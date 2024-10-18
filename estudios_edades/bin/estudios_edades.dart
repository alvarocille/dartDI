import 'package:estudios_edades/estudios_edades.dart';

void main() {
  Map<String, int> personas = {
    'Álvaro': 21,
    'María': 30,
    'Luis': 20,
    'Ana': 35,
    'Pedro': 28
  };

  print('La suma total de las edades es: ${sumarEdades(personas)}');

  print('La edad mínima es: ${encontrarEdadMinima(personas)}');
  print('La edad máxima es: ${encontrarEdadMaxima(personas)}');
}

