import 'package:flutter/material.dart';

class appController extends ChangeNotifier{
  static appController instance = appController();
  bool dartTheme = false;
  changeTheme(){
    dartTheme = !dartTheme;
    notifyListeners();
  }
}

