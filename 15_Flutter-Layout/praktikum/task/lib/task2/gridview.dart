import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text("Grid View - PRAYOGIDCP"),
            centerTitle: true,
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: GridList(),
              );
            },

            // crossAxisCount: 4,
            // crossAxisSpacing: 10,
            // mainAxisSpacing: 10,
            // children: listBorder,
            // padding: const EdgeInsets.all(10),
          )),
    );
  }
}

class GridList extends StatelessWidget {
  GridList({super.key});

  final List<IconData> iconData = <IconData>[
    Icons.shop,
    Icons.person,
    Icons.access_alarm,
    Icons.account_box,
    Icons.alarm,
    Icons.airplay,
    Icons.archive,
    Icons.android,
    Icons.apple,
    Icons.camera
  ];
  final Random r = Random();
  Icon randomIcon() => Icon(IconData(r.nextInt(iconData.length)));
  Icon randomIcon2() => Icon(
        iconData[r.nextInt(iconData.length)],
        size: 40,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.lightBlue),
      child: randomIcon2(),
    );
  }
}
