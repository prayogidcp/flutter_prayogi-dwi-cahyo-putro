import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/home_page.dart';


part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
    UserBloc() : super(UserChanged()) {
late SharedPreferences registerData;
    late bool newUser;
    bool isHidePassword = true;
    String username = '';
    String email = '';

    on<CheckUser>(
      (event, emit) async {
        if (state is UserChanged) {
          // final state = this.state as UserChanged;
          registerData = await SharedPreferences.getInstance();
          newUser = registerData.getBool('register') ?? true;
          if (newUser == false) {
            Navigator.pushAndRemoveUntil(
                event.context!,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
                (route) => false);
          }
          // print('Check User');
        }
      },
    );

    on<Initial>(
      (event, emit) async {
        if (state is UserChanged) {
          registerData = await SharedPreferences.getInstance();
          username = registerData.getString('username').toString();
          email = registerData.getString('email').toString();
          emit(UserChanged(username: username, email: email));
        }
      },
    );

    on<IsRegister>(
      (event, emit) async {
        if (state is UserChanged) {
          registerData = await SharedPreferences.getInstance();
          registerData.setBool('register', event.newUser);
        }
      },
    );

    on<AddName>(
      (event, emit) async {
        if (state is UserChanged) {
          registerData = await SharedPreferences.getInstance();
          registerData.setString('username', event.username);
          print('Name Changed ${event.username}');
        }
      },
    );

    on<AddEmail>(
      (event, emit) async {
        if (state is UserChanged) {
          registerData = await SharedPreferences.getInstance();
          registerData.setString('email', event.email);
          print('Email Changed ${event.email}');
        }
      },
    );

    on<RemoveName>(
      (event, emit) async {
        if (state is UserChanged) {
          registerData = await SharedPreferences.getInstance();
          registerData.remove('username');
          print('Name Deleted');
        }
      },
    );

    on<RemoveEmail>(
      (event, emit) async {
        if (state is UserChanged) {
          registerData = await SharedPreferences.getInstance();
          registerData.remove('email');
          print('Email Deleted');
        }
      },
    );

    on<ChangeUser>(
      (event, emit) {
        if (state is UserChanged) {
          final state = this.state as UserChanged;
          emit(UserChanged(isHidePassword: isHidePassword = !isHidePassword));
        }
      },
    );
  }
}
