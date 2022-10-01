import 'package:flutter/material.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({super.key});

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  TextEditingController namaInput = TextEditingController();
  TextEditingController nohpInput = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: namaInput,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  hintText: "Masukan nama",
                  labelText: "Nama",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Nama tidak boleh kosong!";
                  } else if (value.length >= 15) {
                    return "Nama terlalu panjang!";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: nohpInput,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Masukan no. handphone",
                  labelText: "No. Handphone",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "No. handphone tidak boleh kosong!";
                  } else if (value.length >= 23) {
                    return "No. handphone terlalu panjang!";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                  content: Container(
                                width: 500,
                                height: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nama : ${namaInput.text}"),
                                    Text("No. Handphone : \n${nohpInput.text}"),
                                  ],
                                ),
                              )));
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Sukses")));
                    }
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
