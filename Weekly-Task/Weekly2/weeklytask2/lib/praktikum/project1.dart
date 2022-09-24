import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:weeklytask2/praktikum/aboutus.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {"/aboutus": (context) => AboutUs()},
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController inputFirstName = TextEditingController();

  TextEditingController inputLastName = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController inputEmail = TextEditingController();

  TextEditingController inputHelp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
              child:
                  ElevatedButton(onPressed: () {}, child: Text("Contact us")),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/aboutus");
                  },
                  child: Text("About us")),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(onPressed: () {}, child: Text("Login")),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Weeklytask - PrayogiDCP"),
      ),
      body: ListView(padding: const EdgeInsets.all(10), children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          alignment: Alignment.topCenter,
          child:
              Image.network("https://picsum.photos/400/400", fit: BoxFit.cover),
        ),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut porta lobortis quam ut molestie. Aenean et porttitor erat. Maecenas sit amet quam aliquet, sagittis quam ut, viverra nisi. Curabitur bibendum euismod tristique. Fusce in urna nec nisi maximus euismod. Quisque a volutpat quam. Interdum et malesuada fames ac ante ipsum.",
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 18),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 30),
          child: Text(
            "Contact us",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        RichText(
            text: TextSpan(
          children: [
            const TextSpan(
                text:
                    "Need to get in touch with us? Either fill out the form with your inquiry or find the ",
                style: TextStyle(color: Colors.black87, fontSize: 16)),
            TextSpan(
                text: "departement email",
                recognizer: TapGestureRecognizer()..onTap = () {},
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    decoration: TextDecoration.underline)),
            const TextSpan(
                text: " you'd like to contact bellow.",
                style: TextStyle(fontSize: 16, color: Colors.black87)),
          ],
        )),
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Form(
            key: formKey,
            child: Column(children: [
              TextFormField(
                controller: inputFirstName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(),
                    fillColor: Colors.purpleAccent.withOpacity(0.2),
                    filled: true,
                    labelText: "First Name*",
                    labelStyle: const TextStyle(color: Colors.black87)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please input First Name!";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: inputLastName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(),
                    fillColor: Colors.purpleAccent.withOpacity(0.2),
                    filled: true,
                    labelText: "Last Name",
                    labelStyle: const TextStyle(color: Colors.black87)),
              ),
              TextFormField(
                controller: inputEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(),
                    fillColor: Colors.purpleAccent.withOpacity(0.2),
                    filled: true,
                    labelText: "E-mail*",
                    labelStyle: const TextStyle(color: Colors.black87)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please input e-mail!";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: inputHelp,
                keyboardType: TextInputType.text,
                maxLines: 4,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(),
                    fillColor: Colors.purpleAccent.withOpacity(0.2),
                    filled: true,
                    labelText: "What can we help you with?",
                    labelStyle: const TextStyle(color: Colors.black87)),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Container(
                              width: 400,
                              height: 400,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Nama : ${inputFirstName.text} ${inputLastName.text}\n",
                                        style: const TextStyle(fontSize: 20)),
                                    Text("Email : ${inputEmail.text}\n",
                                        style: const TextStyle(fontSize: 20)),
                                    Text(
                                        "What can we help you with? \n ${inputHelp.text}",
                                        style: const TextStyle(fontSize: 20))
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                        "Sukses",
                        style: TextStyle(fontSize: 40),
                      )));
                    }
                  },
                  child: const Text("Submit"))
            ]),
          ),
        )
      ]),
    );
  }
}
