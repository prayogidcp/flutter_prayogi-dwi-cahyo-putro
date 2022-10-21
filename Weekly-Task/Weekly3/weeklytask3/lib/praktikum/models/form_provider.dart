import 'package:flutter/material.dart';
import 'package:weeklytask3/praktikum/models/form_models.dart';

class FormProvider with ChangeNotifier {
  final List<FormModels> _form = [];
  List<FormModels> get formUser => _form;

  void addUser(FormModels form) {
    _form.add(form);
    notifyListeners();
  }
}