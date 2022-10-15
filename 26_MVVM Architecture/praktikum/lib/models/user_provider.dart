import 'package:flutter/material.dart';
import 'package:praktikum/models/api/user_service.dart';
import 'package:praktikum/models/user_model.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> _user = [];
  String _result = '';

  List<UserModel> get user => _user;
  String get result => _result;

  getAllUsers() async {
    final response = await UserAPI().getUser();
    _result = response.toString();
    notifyListeners();
  }

  postUser(String name, String job) async {
    final response = await UserAPI().postUser(name: name, job: job);
    _result = response.toString();
    notifyListeners();
  }

  putUser(String name, String job) async {
    final response = await UserAPI().putUser(name: name, job: job);
    _result = response.toString();
    notifyListeners();
  }

  deleteUser() async {
    final response = await UserAPI().deleteUser();
    _result = response.toString();
    notifyListeners();
  }

  getUsers() async {
    final response = await UserAPI().getData();
    _user = response;
    notifyListeners();
  }
}
