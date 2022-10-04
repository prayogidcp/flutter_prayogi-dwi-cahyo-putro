import 'package:flutter/material.dart';
import 'package:praktikum/task/models/contacts.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Contact(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
