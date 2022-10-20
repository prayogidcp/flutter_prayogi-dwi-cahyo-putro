import 'package:dio/dio.dart';
import 'package:praktikum/models/item_models.dart';

class ItemAPI {
  final Dio dio = Dio();

  Future<List<ItemModel>> getItem() async {
    final Response response = await dio.get(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods");
    // debugPrint(response.data.toString());

    List<ItemModel> dataItem = (response.data as List)
        .map((e) => ItemModel(id: e["id"], name: e["name"]))
        .toList();

    return dataItem;
  }
}
