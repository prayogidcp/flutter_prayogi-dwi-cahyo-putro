import 'dart:convert';
import 'package:praktikum/pages/home_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:praktikum/models/user_model.dart';

class UserAPI {
  final Dio dio = Dio();

  Future getUser() async {
    try {
      final Response response = await dio.get("https://reqres.in/api/users");
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future postUser({required String name, required String job}) async {
    try {
      final Response response = await dio.post("https://reqres.in/api/users",
          data: {"name": name, "job": job});

      final UserModel _userModel = UserModel.fromJson(response.data);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future putUser({required String name, required String job}) async {
    try {
      final Response response = await dio.put("https://reqres.in/api/users4",
          data: {"name": name, "job": job});
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future deleteUser() async {
    try {
      final Response response =
          await dio.delete("https://reqres.in/api/users4");
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
