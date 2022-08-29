import 'dart:io';

void main() {
  const pi = 3.14;
  var jarijari;

  stdout.write("Jari-jari = ");
  jarijari = stdin.readLineSync();
  double hasiljarijari = double.parse(jarijari);
  double luaslingkaran = pi * hasiljarijari * hasiljarijari;
  print("Luas Lingkaran = pi * r * r");
  print("Luas Lingkaran = $luaslingkaran");
}
