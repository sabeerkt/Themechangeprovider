import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  int theme = 0;
  List colls = [Colors.red, Colors.black, Colors.brown, Colors.blue, Colors.pink, Colors.white, Colors.yellow, Colors.green];
  void colorChange() {
    theme = (theme + 1) % colls.length;
    notifyListeners();
  }
}
