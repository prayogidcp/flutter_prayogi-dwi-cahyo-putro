import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'models/contacts.dart';
import 'models/model_contact.dart';
import 'package:provider/provider.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({super.key});

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerNoHP = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Contact"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          key: formKey,
          children: [
            TextFormField(
              controller: controllerNama,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text("Nama")),
            ),
            sizedBoxHigh(),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: controllerNoHP,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), label: Text("No. Handphone")),
            ),
            sizedBoxHigh(),
            ElevatedButton(
                onPressed: () {
                  if (controllerNama.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Error"),
                          actions: [
                            const Text("Mohon Masukan Nama!"),
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Close"))
                          ],
                        );
                      },
                    );
                  } else if (controllerNoHP.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Error"),
                          actions: [
                            const Text("Mohon Masukan No. Handphone!"),
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Close"))
                          ],
                        );
                      },
                    );
                  }                   
                  else {
                    final contactItem = ContactModel(
                      nama: controllerNama.text,
                      noHP: controllerNoHP.text,
                      id: const Uuid().v1(),
                    );
                    contactProvider.addContact(contactItem);
                    Navigator.pop(context);
                  }
                },
                child: const Text("Add"))
          ],
        ),
      ),
    );
  }

  Widget sizedBoxHigh() {
    return const SizedBox(
      height: 10,
    );
  }
}
