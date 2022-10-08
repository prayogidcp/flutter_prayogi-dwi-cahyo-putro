import 'package:flutter/material.dart';
import 'createContact.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        "/home" :(context) => Home(),
        "/createContact" :(context) => const CreateContact()
      },
    );
  }
}
