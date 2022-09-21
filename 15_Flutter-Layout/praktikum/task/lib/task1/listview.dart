import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

Widget homePage() {
  int nomerAwal = 432123141;
  return Scaffold(
      appBar: AppBar(
        title: Text("ListView - PRAYOGIDCP"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) => ListChat(
                name: faker.person.name(),
                // number: faker.phoneNumber.random.decimal(min : 08),
                number: nomerAwal * 2 + index * 9,
                img: "https://picsum.photos/id/$index/200/300",
              )));
}

class ListChat extends StatelessWidget {
  final String name;
  // final double number;
  final int number;
  final String img;

  const ListChat(
      {super.key, required this.name, required this.number, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          leading: CircleAvatar(backgroundImage: NetworkImage(img)),
          subtitle: Text("08${number.toString()}"),
        ),
        const Divider(
          thickness: 1,
          height: 1,
        )
      ],
    );
  }
}
