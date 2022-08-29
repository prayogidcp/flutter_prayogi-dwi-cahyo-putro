import 'dart:io';

void main() {
  const pi = 3.14;
  var jarijari;

  stdout.write("Jari-jari = ");
  jarijari = stdin.readLineSync();
  double hasiljari = double.parse(jarijari);
  double luas = pi * hasiljari * hasiljari;
  print("Luas Lingkaran = pi*r*r");
  print("Luas Lingkaran = $luas");
}
