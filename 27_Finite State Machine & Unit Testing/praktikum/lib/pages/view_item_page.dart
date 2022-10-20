import 'package:flutter/material.dart';
import 'package:praktikum/models/item_provider.dart';
import 'package:provider/provider.dart';

class ViewItems extends StatefulWidget {
  const ViewItems({super.key});

  @override
  State<ViewItems> createState() => _ViewItemsState();
}

class _ViewItemsState extends State<ViewItems> {
  @override
  void initState() {
    super.initState();
    Provider.of<ItemProvider>(context, listen: false).getItem();
  }

  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<ItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("View"),
      ),
      body: ListView.builder(
        itemCount: itemProvider.item.length,
        itemBuilder: (context, index) {
          final items = itemProvider.item[index];
          return ListTile(
            title: Text(items.name),
          );
        },
      ),
    );
  }
}
