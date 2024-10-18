import 'dart:io';

bool esPrimo(int n) {
  if (n <= 1) return false;
  if (n <= 3) return true;
  if (n % 2 == 0) return false;

  for (int i = 3; i * i <= n; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}

List<int> sacarPrimos(int n) {
  List<int> primos = [];
  for (var i = 0; i <= n; i++) {
    if (esPrimo(i)) {
      primos.add(i);
    }
  }
  return primos;
}

void main(List<String> args) {
  int n;
  if (args.isEmpty) {
    n = int.parse(stdin.readLineSync()!);
  } else {
    n = int.parse(args[0]);
  }
  List <int> primos = sacarPrimos(n);
  print("Primos del 1 al $n: $primos");
}
