import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/imgsatu': ((context) => Image1()),
        '/imgdua': ((context) => Image2()),
        '/imgtiga': ((context) => Image3()),
        '/home': ((context) => HomeScreen())
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Section16 - PRAYOGIDCP"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 1,
            children: [
              GestureDetector(
                  child: Image.network("https://picsum.photos/id/1/300/300"),
                  onTap: () => setState(() {
                        Navigator.pushNamed(context, '/imgsatu');
                      })),
              GestureDetector(
                  child: Image.network("https://picsum.photos/id/2/300/300"),
                  onTap: () => setState(() {
                        Navigator.pushNamed(context, '/imgdua');
                      })),
              GestureDetector(
                  child: Image.network("https://picsum.photos/id/3/300/300"),
                  onTap: () => setState(() {
                        Navigator.pushNamed(context, '/imgtiga');
                      })),
            ],
          ),
        ));
  }
}

class Image1 extends StatefulWidget {
  const Image1({super.key});

  @override
  State<Image1> createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Image 2"),
      // ),
      body: GestureDetector(
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/id/1/300/300"),
                    fit: BoxFit.cover))),
        onTap: () => setState(() {
          Navigator.pushNamed(context, '/home');
        }),
      ),
    );
  }
}

class Image2 extends StatefulWidget {
  const Image2({super.key});

  @override
  State<Image2> createState() => _Image2State();
}

class _Image2State extends State<Image2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Image 2"),
      // ),
      body: GestureDetector(
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/id/2/300/300"),
                    fit: BoxFit.cover))),
        onTap: () => setState(() {
          Navigator.pushNamed(context, '/home');
        }),
      ),
    );
  }
}

class Image3 extends StatefulWidget {
  const Image3({super.key});

  @override
  State<Image3> createState() => _Image3State();
}

class _Image3State extends State<Image3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Image 2"),
      // ),
      body: GestureDetector(
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/id/3/300/300"),
                    fit: BoxFit.cover))),
        onTap: () => setState(() {
          Navigator.pushNamed(context, '/home');
        }),
      ),
    );
  }
}
