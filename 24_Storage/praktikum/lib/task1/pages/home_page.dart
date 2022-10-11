import 'package:flutter/material.dart';
import 'package:praktikum/task1/pages/register_page.dart';
import 'package:praktikum/task1/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  late SharedPreferences registerdata;
  String username = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    userProvider.initial();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Consumer<UserProvider>(
            builder: (context, value, child) {
              return Text("Hello, ${value.username}", style: const TextStyle(fontSize: 30),);
            },
          ),
          Consumer<UserProvider>(
            builder: (context, value, child) {
              return Text(value.email, style: const TextStyle(fontSize: 20),);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                userProvider.isRegister(true);
                userProvider.deleteName(username);
                userProvider.deleteEmail(email);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserRegister(),
                    ));
              },
              child: const Text("Sign Out"))
        ]),
      ),
    );
  }
}
