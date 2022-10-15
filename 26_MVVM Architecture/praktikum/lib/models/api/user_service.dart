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

  Future getData() async {
    try {
      final Response response = await dio.get('https://reqres.in/api/users');

      debugPrint(response.data.toString());

      List dataUser = (response.data['data'] as List)
          .map((e) => UserModel.fromJson(e))
          .toList();

      return dataUser;
    } catch (e) {
      rethrow;
    }
  }

  Future postUser({required String name, required String job}) async {
    try {
      final Response response = await dio.post("https://reqres.in/api/users",
          data: {"name": name, "job": job});
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future puttUser({required String name, required String job}) async {
    try {
      final Response response = await dio.put("https://reqres.in/api/users",
          data: {"name": name, "job": job});
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future putUser({required String name, required String job}) async {
    try {
      final Response response = await dio.put("https://reqres.in/api/users/4",
          data: {"name": name, "job": job});
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future deleteUser() async {
    try {
      final Response response =
          await dio.delete("https://reqres.in/api/users/4");
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
