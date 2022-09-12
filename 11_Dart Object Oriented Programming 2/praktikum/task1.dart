class BangunRuang {
  double panjang;
  double lebar;
  double tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  volume() {
    return 0;
  }
}

class Kubus extends BangunRuang {
  double sisi;
  Kubus(super.panjang, super.lebar, super.tinggi, this.sisi);

  @override
  volume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(super.panjang, super.lebar, super.tinggi);

  @override
  volume() {
    return panjang * lebar * tinggi;
  }
}

void main(List<String> args) {
  Kubus volumeKubus = Kubus(0, 0, 0, 5);
  Balok volumeBalok = Balok(2, 2 ,2);

  print(volumeBalok.volume());
  print(volumeKubus.volume());
}
