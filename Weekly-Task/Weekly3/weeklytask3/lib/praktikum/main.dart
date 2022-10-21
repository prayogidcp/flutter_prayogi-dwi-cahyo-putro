import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weeklytask3/praktikum/models/form_provider.dart';
import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FormProvider(),
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
