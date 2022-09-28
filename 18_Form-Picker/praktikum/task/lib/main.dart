import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_file/open_file.dart';
import 'dart:async';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

Color _currentColor = Colors.blue;

TextEditingController inputCaption = TextEditingController();

DateTime selectedDate = DateTime.now();

void _openFile(PlatformFile file) {
  OpenFile.open(file.path);
}

class _HomeAppState extends State<HomeApp> {
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1945, 1),
        lastDate: DateTime(2050));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  File? filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Post"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Text(
              "Cover",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () async {
                  final inputImage = await FilePicker.platform.pickFiles();
                  if (inputImage == null) return;
                  setState(() {
                    filePath = File(inputImage.files.first.path.toString());
                  });
                },
                child: const Text("Pilih File")),
            const Text(
              "Publish At",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "${selectedDate.toLocal()}".split(' ')[0],
              style: const TextStyle(fontSize: 15),
            ),
            ElevatedButton(
              onPressed: () => {
                _selectDate(context),
                print(selectedDate.day + selectedDate.month + selectedDate.year)
              },
              child: const Text('Pilih Tanggal'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Color Theme",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: _currentColor),
              height: 50,
              width: double.infinity,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Pick Your Color"),
                        content: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: ColorPicker(
                            pickerColor: _currentColor,
                            onColorChanged: (color) {
                              setState(() {
                                _currentColor = color;
                              });
                            },
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Save"))
                        ],
                      );
                    },
                  );
                },
                child: const Text("Pick Color")),
            const Text(
              "Caption",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                maxLines: 7,
                controller: inputCaption,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                if(filePath != null){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Result(filePath: filePath!),
                      ));
                }
                },
                child: const Text("Submit")),
          ],
        ),
      ),
    );
  }
}

Widget buildFilePicker() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Cover",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Container(
        width: double.infinity,
        child:
            ElevatedButton(onPressed: () {}, child: const Text("Pilih File")),
      )
    ],
  );
}

class Result extends StatelessWidget {
  Result({super.key, required this.filePath});

  final File filePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preview Post"),
      ),
      body: ListView(padding: const EdgeInsets.all(10), children: [
        Container(child: Image.file(filePath)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Published "),
              Text("${selectedDate.toLocal()}".split(' ')[0]),
              const SizedBox(
                width: 120,
              ),
              const Text("Color : "),
              Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: _currentColor,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          inputCaption.text,
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
