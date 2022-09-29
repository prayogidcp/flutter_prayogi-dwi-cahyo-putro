import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Galery"),
        ),
        body: ListView(padding: const EdgeInsets.all(10), children: [
          const Text(
            "Image view Dialog",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: image1(),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text(
                                "View Image Dialog",
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                Container(
                                  alignment: Alignment.center,
                                  child: image1(),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Center(
                                        child: Text(
                                      "Close",
                                    )))
                              ],
                            ));
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: image2(),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text(
                                "View Image Dialog",
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                Container(
                                  alignment: Alignment.center,
                                  child: image2(),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Center(
                                        child: Text(
                                      "Close",
                                    )))
                              ],
                            ));
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: image3(),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text(
                                "View Image Dialog",
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                Container(
                                  alignment: Alignment.center,
                                  child: image3(),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Center(
                                        child: Text(
                                      "Close",
                                    )))
                              ],
                            ));
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Image view Buttom Sheet",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  child: image1(),
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10))),
                      context: context,
                      builder: (context) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Image view Buttom Sheet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            image1(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Close"))
                          ],
                        );
                      },
                    );
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: image2(),
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10))),
                      context: context,
                      builder: (context) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Image view Buttom Sheet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            image2(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Close"))
                          ],
                        );
                      },
                    );
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: image3(),
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10))),
                      context: context,
                      builder: (context) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Image view Buttom Sheet",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            image3(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Close"))
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          )
        ]));
  }
}

Widget image1() {
  return Container(
    height: 280,
    width: 200,
    alignment: Alignment.center,
    child: Image.network(
      "https://i.pinimg.com/564x/5f/4a/1b/5f4a1bbdaf590c340234150dec029b69.jpg",
      height: 280,
      width: 200,
      fit: BoxFit.cover,
    ),
  );
}

Widget image2() {
  return Container(
    height: 280,
    width: 200,
    alignment: Alignment.center,
    child: Image.network(
      "https://i.pinimg.com/564x/d3/d3/bd/d3d3bdab0ed623f53456bd9bf6823471.jpg",
      height: 280,
      width: 200,
      fit: BoxFit.cover,
    ),
  );
}

Widget image3() {
  return Container(
    height: 280,
    width: 200,
    alignment: Alignment.center,
    child: Image.network(
      "https://i.pinimg.com/564x/46/7e/8d/467e8d7084826c110759c0072a80a913.jpg",
      height: 280,
      width: 200,
      fit: BoxFit.cover,
    ),
  );
}
