import 'package:flutter/material.dart';
import 'package:praktikum/services/user_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String name = "";
String job = "";
UserAPI userAPI = UserAPI();
String methodGet = "";
bool isGET = false;
bool isPOST = false;
bool isPUT = false;
bool isDELETE = false;

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final TextEditingController _controllerName = TextEditingController();
final TextEditingController _controllerJob = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          key: _formKey,
          children: [
            TextField(
              controller: _controllerName,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Name"),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Icon(Icons.person)),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _controllerJob,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Job"),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Icon(Icons.work)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (isGET == false) {
                          isGET = true;
                        } else {
                          isGET = false;
                        }
                      });
                    },
                    child: const Text("GET")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (isPOST == false) {
                          isPOST = true;
                        } else {
                          isPOST = false;
                        }
                      });
                    },
                    child: const Text("POST")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (isPUT == false) {
                          isPUT = true;
                        } else {
                          isPUT = false;
                        }
                      });
                    },
                    child: const Text("PUT")),
                ElevatedButton(onPressed: () {
                  setState(() {
                        if (isDELETE == false) {
                          isDELETE = true;
                        } else {
                          isDELETE = false;
                        }
                      });
                }, child: const Text("DELETE")),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Result",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            kondisiButton()
          ],
        ),
      ),
    );
  }

  Widget kondisiButton() {
    if (isGET == true) {
      return FutureBuilder(
        future: userAPI.getUser(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else {
            return Text(snapshot.data.toString());
          }
        },
      );
    } else if (isPOST == true) {
      return FutureBuilder(
        future: userAPI.postUser(
            name: _controllerName.text, job: _controllerJob.text),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else {
            return Text(snapshot.data.toString());
          }
        },
      );
    } else if (isPUT == true) {
      return FutureBuilder(
        future: userAPI.putUser(
            name: _controllerName.text, job: _controllerJob.text),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else {
            return Text(snapshot.data.toString());
          }
        },
      );
    } else {
      return FutureBuilder(
        future: userAPI.deleteUser(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else {
            return Text(snapshot.data.toString());
          }
        },
      );
    }
    // return Container();
  }
}
