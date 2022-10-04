import 'package:flutter/material.dart';
import 'model_contact.dart';

class Contact with ChangeNotifier {
  final List<ContactModel> _listContacts = [];
  List<ContactModel> get contacts => _listContacts;

  void addContact(ContactModel contact) {
    _listContacts.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    _listContacts.removeAt(index);
    notifyListeners();
  }
}
