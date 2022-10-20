import 'package:flutter/material.dart';
import 'package:praktikum/models/item_provider.dart';
import 'package:praktikum/pages/view_item_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ItemProvider(),
        )
      ],
      child: const MaterialApp(
        home: ViewItems(),
      ),
    );
  }
}
