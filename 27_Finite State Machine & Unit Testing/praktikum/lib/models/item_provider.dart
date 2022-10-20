import 'package:flutter/material.dart';
import 'package:praktikum/models/api/item_api.dart';
import 'package:praktikum/models/item_models.dart';

class ItemProvider with ChangeNotifier {
  List<ItemModel> _item = [];
  List<ItemModel> get item => _item;

  getItem() async {
    final response = await ItemAPI().getItem();
    _item = response;
    notifyListeners();
  }
}
