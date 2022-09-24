import 'package:flutter/material.dart';
import 'package:task/createContact.dart';
import 'package:task/home.dart';

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
