//BELUM SELESAI

class Hewan {
  double berat = 10;
}

class Mobil {
  double kapasitas = 50;

  List muatan = [];

  void tambahMuatan() {
    if (muatan.isEmpty) {
      muatan.add(Hewan().berat);
    }
    print(muatan);
    // if (muatan.last > kapasitas) {
    //   muatan.add(Hewan().berat);
    // }
    // print(muatan);
    // int jumlah = 0;
    // for (int i in muatan) {
    //   jumlah += i;
    //   print(jumlah);
    // }
  }
}

void main() {
  var h1 = Hewan();
  var h2 = Mobil();
  // print(h2.muatan.length);
  // print("Berat = ${h1.berat}");
  h2.tambahMuatan();
}
