import 'dart:io';
import 'dart:math';
import 'package:calculadora_rapida/calculadora_rapida.dart';

void main(List<String> arguments) {

  bool salir = false;
  while (!salir) {
    print("""

    1. Sumar.
    2. Restar.
    3. Multiplicar.
    4. Dividir.
    5. Elevar.
    6. Raiz cuadrada.
    0. Salir.
    Introduzca el número de la operación que desea realizar: """);
    int n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 0:
        salir = true;
        break;
      case 1:
        print("SUMAR");
        double n1 = pedirDouble("Introduzca el primer sumando.");
        double n2 = pedirDouble("Introduzca el segundo sumando.");
        print("${mostrarNumero(n1)} + ${mostrarNumero(n2)} = ${mostrarNumero(n1+n2)}");
        break;
      case 2:
        print("RESTAR");
        double n1 = pedirDouble("Introduzca el minuendo.");
        double n2 = pedirDouble("Introduzca el sustraendo.");
        print("${mostrarNumero(n1)} - ${mostrarNumero(n2)} = ${mostrarNumero(n1-n2)}");
        break;
      case 3:
        print("MULTIPLICAR");
        double n1 = pedirDouble("Introduzca el primer factor.");
        double n2 = pedirDouble("Introduzca el segundo factor.");
        print("${mostrarNumero(n1)} x ${mostrarNumero(n2)} = ${mostrarNumero(n1*n2)}");
        break;
      case 4:
        print("DIVIDIR");
        double n1 = pedirDouble("Introduzca el dividendo.");
        double n2 = pedirDouble("Introduzca el divisor.");
        print("${mostrarNumero(n1)} / ${mostrarNumero(n2)} = ${mostrarNumero(n1/n2)}");
        break;
      case 5:
        print("ELEVAR");
        double n1 = pedirDouble("Introduzca la base.");
        int n2 = pedirInt("Introduzca el exponente.");
        String exponente = n2.toString().split('').map((digit) => superIndice[int.parse(digit)]!).join('');
        print("${mostrarNumero(n1)}$exponente = ${mostrarNumero(pow(n1, n2).toDouble())}");
        break;
      case 6:
        print("Raíz");
        double n1 = pedirDouble("Introduzca el radicando.");
        int n2 = pedirInt("Introduzca el índice.");
        String indice = n2.toString().split('').map((digit) => superIndice[int.parse(digit)]!).join('');
        print("$indice√${mostrarNumero(n1)} = ${mostrarNumero(pow(n1, 1/n2).toDouble())}");
        break;
      default:
    }
  }

}


