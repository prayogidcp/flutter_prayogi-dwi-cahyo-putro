import 'dart:io';

void main() {
  var nilai;

  stdout.write("Nilai = ");
  nilai = stdin.readLineSync();
  int hasilnilai = int.parse(nilai);

  if (hasilnilai > 70) {
    print("Return A");
  } else if (hasilnilai > 40) {
    print("Return B");
  } else if (hasilnilai > 0) {
    print("Return C");
  } else {
    print("Kosong");
  }
}
