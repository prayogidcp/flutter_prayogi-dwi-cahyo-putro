import 'package:flutter/material.dart';
import 'package:praktikum/task/contact_preview.dart';
import 'package:praktikum/task/create_contact.dart';
import 'package:praktikum/task/empty_screen.dart';
import 'models/contacts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contacts"),
        ),
        body: bodyHomeScreen(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateContact(),
                ));
          },
          child: const Icon(Icons.add),
        ));
  }

  Widget bodyHomeScreen() {
    return Consumer<Contact>(
      builder: (context, contact, child) {
        if (contact.contacts.isNotEmpty) {
          return ContactPreview(contact: contact);
        } else {
          return const EmptyScreen();
        }
      },
    );
  }
}
