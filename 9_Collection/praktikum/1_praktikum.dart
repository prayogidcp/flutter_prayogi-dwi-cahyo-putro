void main() async {
  var data = await listData([1, 2, 3, 4], 2);
  print(data);
}

Future listData(List<int> list, int pengali) async {
  List<int> newList = [];

  for (var i = 0; i < list.length; i++) {
    await Future.delayed(
      Duration(seconds: 1),
      () {
        newList.add(list[i] * pengali);
      },
    );
  }
  return newList;
}
