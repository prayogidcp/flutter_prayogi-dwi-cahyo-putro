import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Badges Prayogi"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_badge(), _badge2()],
          ),
        ));
  }

  Widget _badge() {
    return Badge(
      badgeColor: Colors.purple,
      borderRadius: BorderRadius.circular(20),
      padding: const EdgeInsets.all(10),
      shape: BadgeShape.square,
      badgeContent: const Text(
        'BADGE',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  Widget _badge2() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Badge(
        badgeColor: Colors.purple,
        borderRadius: BorderRadius.circular(20),
        padding: EdgeInsets.all(5),
        shape: BadgeShape.square,
        badgeContent: const Text(
          'BADGE',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
