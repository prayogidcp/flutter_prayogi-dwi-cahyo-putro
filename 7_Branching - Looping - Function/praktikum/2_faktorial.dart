import 'dart:io';

void main() {
  int faktorial = 1;
  print("Nilai = ");
  int? n = int.parse(stdin.readLineSync()!);
  if (n < 0) {
    print("Angka yang dimasukan bukan bilangan bulat");
  } else {
    for (int i = 1; i <= n; i++) {
      faktorial *= i;
    }
    print("Hasil faktorial dari " + n.toString() + " adalah " + faktorial.toString());
  }
}
