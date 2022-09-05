createList() async {
  final List<Map<String, dynamic>> listData = [
    {
      "Nama": "Prayogi",
      "Umur": 21,
      "Warna": ["Hitam", "Merah"]
    },
  ];

  var mapList = listData.map((e) => "Nama = ${e["Nama"]} Umur = ${e["Umur"]} Warna favorit = ${e["Warna"]}");
  print(mapList);
}

void main(List<String> args) {
  createList();
}
