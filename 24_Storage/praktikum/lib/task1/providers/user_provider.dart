import 'package:flutter/material.dart';
import 'package:praktikum/task1/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends ChangeNotifier {
  late SharedPreferences registerData;
  late bool newUser = false;
  String username = "";
  String email = "";

  Future<void> checkRegister(BuildContext context) async {
    registerData = await SharedPreferences.getInstance();
    newUser = registerData.getBool('login') ?? true;

    if (newUser == false) {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false);
    }
    notifyListeners();
  }

  Future<void> isRegister(bool isRegister) async {
    registerData = await SharedPreferences.getInstance();
    registerData.setBool('register', isRegister);
    notifyListeners();
  }

    Future<void> setName(String username) async {
    registerData = await SharedPreferences.getInstance();
    registerData.setString('username', username);
    notifyListeners();
  }

  Future<void> setEmail(String email) async {
    registerData = await SharedPreferences.getInstance();
    registerData.setString('email', email);
    notifyListeners();
  }

  Future<void> initial() async {
    registerData = await SharedPreferences.getInstance();
    username = registerData.getString('username').toString();
    email = registerData.getString('email').toString();
    notifyListeners();
  }

  Future<void> deleteName(String username) async {
    registerData = await SharedPreferences.getInstance();
    registerData.remove('username');
    notifyListeners();
  }

  Future<void> deleteEmail(String email) async {
    registerData = await SharedPreferences.getInstance();
    registerData.remove('email');
    notifyListeners();
  }
}
