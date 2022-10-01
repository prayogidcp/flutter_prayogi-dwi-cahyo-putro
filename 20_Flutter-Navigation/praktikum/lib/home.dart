import 'package:flutter/material.dart';
import 'package:praktikum/createContact.dart';

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> listContacts = [
    {"nama": "Prayogi", "noHP": 6289652366540},
    {"nama": "James", "noHP": 6283898000507},
    {"nama": "Irwan", "noHP": 6285219303503},
    {"nama": "Tretan", "noHP": 6285210188684},
    {"nama": "Ridwan", "noHP": 6283812312312},
    {"nama": "Erlangga", "noHP": 628521238912},
    {"nama": "Putra", "noHP": 628962320912},
    {"nama": "Hidayat", "noHP": 628521239123},
    {"nama": "Galuh", "noHP": 6289612319342},
    {"nama": "Farkhan", "noHP": 6281291831231},
    {"nama": "Fajar", "noHP": 6285298934839},
    {"nama": "Eka", "noHP": 628521231451},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        centerTitle: true,
      ),
      body: ListView(
          children: listContacts.map((dataContacts) {
        return Card(
          clipBehavior: Clip.none,
          color: Colors.white.withOpacity(0.8),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dataContacts["nama"],
                  style: const TextStyle(
                      fontSize: 17, color: Color.fromARGB(255, 116, 116, 116)),
                ),
                Text(
                  "+${dataContacts['noHP']}",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        );
      }).toList()),
      floatingActionButton: FloatingActionButton(
        // onPressed: () {
        //   Navigator.pushNamed(context, "/createContact");
        // },
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateContact(),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
