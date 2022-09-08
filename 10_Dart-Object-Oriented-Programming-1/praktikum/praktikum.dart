class Hewan {
  var beratHewan;
  var namaHewan;
}

class Mobil {
  var kapasistasMobil = 50;
  List<String> muatanMobil = [];
  var totalMuatan = 0;

  void tambahMuatan(int beratHewan, String namaHewan) {
    if (kapasistasMobil - beratHewan >= 0) {
      kapasistasMobil -= beratHewan;
      totalMuatan += beratHewan;
      muatanMobil.add("$namaHewan $beratHewan kg");
      print("Total muatan Mobil = $totalMuatan kg");
      print("Isi muatan Mobil = $muatanMobil");
    } else {
      print("Muatan kelebihan");
    }
  }
}

void main() {
  var hewan1 = Hewan();
  hewan1.beratHewan = 5;
  hewan1.namaHewan = "Ayam";

  var hewan2 = Hewan();
  hewan2.beratHewan = 10;
  hewan2.namaHewan = "Kambing";

  var mobil = Mobil();
  mobil.tambahMuatan(hewan1.beratHewan, hewan1.namaHewan);
  mobil.tambahMuatan(hewan2.beratHewan, hewan2.namaHewan);
}
