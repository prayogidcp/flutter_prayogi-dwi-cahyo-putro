import 'dart:io';

task1(int nilai) {
  if (nilai > 70) {
    print("Return A");
  } else if (nilai > 40) {
    print("Return B");
  } else if (nilai > 0) {
    print("Return C");
  } else {
    print("Kosong");
  }
}

task2(int angka) {
  int faktorial = 1;

  for (int i = 1; i <= angka; i++) {
    faktorial *= i;
  }
  print('Faktorial dari $angka adalah $faktorial');
}

void main() {
  print("Nilai");
  task1(80);
  task1(50);
  task1(30);
  task1(0);
  print("");
  print("Faktorial");
  task2(10);
  task2(20);
  task2(30);
}
