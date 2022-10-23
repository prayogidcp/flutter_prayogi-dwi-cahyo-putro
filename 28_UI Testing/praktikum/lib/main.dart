import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Barcode Prayogi"), centerTitle: true),
      body: ListView(
        children: [
          _barcodeA(), _barcodeB(), _barcodeC()
        ],
      ),
    );
  }

  Widget _barcodeA() {
    return BarcodeWidget(
      data: "Alterra Academy",
      barcode: Barcode.qrCode(),
      width: 200,
      height: 200,
      margin: const EdgeInsets.all(30),
    );
  }

  Widget _barcodeB() {
    return BarcodeWidget(
      data: "Flutter Asik",
      barcode: Barcode.qrCode(),
      width: 200,
      height: 200,
      margin: const EdgeInsets.all(30)
    );
  }

  Widget _barcodeC() {
    return BarcodeWidget(
      data: "PRAYOGI DWI CAHYO PUTRO",
      barcode: Barcode.qrCode(),
      width: 200,
      height: 200,
      margin: const EdgeInsets.all(30)
    );
  }
}
