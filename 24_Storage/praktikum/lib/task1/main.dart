import 'package:flutter/material.dart';
import 'package:praktikum/task1/pages/home_page.dart';
import 'package:praktikum/task1/pages/register_page.dart';
import 'package:praktikum/task1/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: const MaterialApp(
        home: UserRegister(),
      ),
    );
  }
}
