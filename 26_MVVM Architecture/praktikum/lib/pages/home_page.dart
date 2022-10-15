import 'package:flutter/material.dart';
import 'package:praktikum/models/user_provider.dart';
import 'package:praktikum/pages/user_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final TextEditingController _controllerName = TextEditingController();
final TextEditingController _controllerJob = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UserPage(),
              ),
            );
          },
          child: const Icon(Icons.arrow_right_sharp)),
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
                    onPressed: () async {
                      Provider.of<UserProvider>(context, listen: false)
                          .getAllUsers();
                    },
                    child: const Text("GET")),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<UserProvider>(context, listen: false)
                          .postUser(_controllerName.text, _controllerJob.text);
                    },
                    child: const Text("POST")),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<UserProvider>(context, listen: false)
                          .putUser(_controllerName.text, _controllerJob.text);
                    },
                    child: const Text("PUT")),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<UserProvider>(context, listen: false)
                          .deleteUser();
                    },
                    child: const Text("DELETE")),
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
            Text(userProvider.result.toString())
          ],
        ),
      ),
    );
  }
}
