import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AboutUs extends StatelessWidget {
  AboutUs({super.key});

  final List<Map<String, dynamic>> listProducts = [
    {
      "nama" : "Kompor",
      "harga" : 235000
    },
    {
      "nama" : "Mesin Cuci",
      "harga" : 2000000
    },
    {
      "nama" : "Setrika",
      "harga" : 250000
    }, 
    {
      "nama" : "Chest Freezer",
      "harga" : 4000000
    }, 
    {
      "nama" : "Air Fryer",
      "harga" : 1000000
    }, 
    {
      "nama" : "Blender",
      "harga" : 350000
    }, 
    {
      "nama" : "Kulkas",
      "harga" : 2000000
    }, 
    {
      "nama" : "Air Cooler",
      "harga" : 500000
    }, 
    {
      "nama" : "Rice Coocker",
      "harga" : 300000
    }, 
    {
      "nama" : "Mixer",
      "harga" : 400000
    },
    {
      "nama" : "Over",
      "harga" : 7000000
    },
    {
      "nama" : "Kipas",
      "harga" : 180000
    }, 
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About us"),
      ),
      body: ListView(
        children: listProducts.map((dataProducts) => 
        Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Barang : ${dataProducts['nama']}",
                  style: const TextStyle(
                    fontSize: 17
                  )),
                Text(
                  NumberFormat.currency(
                    locale: "id",
                    symbol: "Harga : Rp. ",
                    decimalDigits: 0 
                  ).format(dataProducts["harga"]), 
                  style: const TextStyle(
                    fontSize: 16))
            ],
            ),
          ),
        )).toList()
      ),
    );
  }
}