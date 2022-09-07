import 'dart:io';

void main(List<String> args) {
  listbola();
}

ifelse() {
  stdout.write("Masukan skor MU = ");
  int scoreMU = int.parse(stdin.readLineSync()!);
  stdout.write("Masukan score Arsenal = ");
  int scoreArsenal = int.parse(stdin.readLineSync()!);
  if (scoreMU > scoreArsenal) {
    print("MU Menang");
  } else if (scoreMU < scoreArsenal) {
    print("Arsenal Menang");
  } else {
    print("Kedudukan seri");
  }
}

// ada 7 orang: adit, ade, agung, akbar, yusril, mahendra

// 1: print setiap nama diatas kecuali ade
// 2: print semua nama diatas & berhenti ketika ada nama akbar

perulanganFor() {
  List orang = ["Adit", "Ade", "Agung", "Akbar", "Yusril", "Mahendra"];
  List orangReversed = new List.from(orang.reversed);
  String or1 = orang.reversed.toString();
  // print(orangReversed);
  // print(or1);
  for (String i in orang.reversed) {
    // if (i == "Ade") {
    //   continue;
    // }
    print(i);
  }
}

listbola() {
  List<String> daftarClubs = [
    "Arsenal",
    "MU",
    "Chelsea",
    "MCity",
    "Liverpool",
    "Totenham"
  ];
  int i = 0;
  // while (i < daftarClubs.length) {
  //   print(daftarClubs[i]);
  //   i++;
  // }
  // while (daftarClubs.isNotEmpty) {
    print(daftarClubs.removeAt(2));
    print(daftarClubs);
  // }

  // do {
  //   print(daftarClubs[i]);
  //   i++;
  // } while (i < daftarClubs.length);
}
