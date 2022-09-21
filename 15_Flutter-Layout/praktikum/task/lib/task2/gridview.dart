import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // final List<IconData> iconData = <IconData>[
  //   Icons.account_box,
  //   Icons.person_pin_sharp,
  //   Icons.add_circle_rounded,
  //   Icons.ac_unit_rounded,
  //   Icons.add_box,
  //   Icons.add_reaction_rounded
  // ];
  // final Random r = Random();

  final List<Container> listBorder = List.generate(
      40,
      (index) {
        return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlue,
            ),
            child: const Icon(Icons.accessible_outlined),
          );
      });

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
          body:
              // GridView.count(
              //   padding: const EdgeInsets.all(10),
              //   crossAxisCount: 4,
              //   children: [
              //     // // 1
              // Container(
              //     margin: const EdgeInsets.all(10),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: Colors.lightBlue,
              //     ),
              //     child: const Icon(Icons.pets)),
              // Container(
              //     margin: const EdgeInsets.all(10),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: Colors.lightBlue,
              //     ),
              //     child: const Icon(Icons.abc)),
              // Container(
              //     margin: const EdgeInsets.all(10),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: Colors.lightBlue,
              //     ),
              //     child: const Icon(Icons.person)),
              // Container(
              //     margin: const EdgeInsets.all(10),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50),
              //       color: Colors.lightBlue,
              //     ),
              //     child: const Icon(Icons.access_alarm)),
              // ],
              GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: listBorder,
            padding: const EdgeInsets.all(10),
          )),
    );
  }
}
