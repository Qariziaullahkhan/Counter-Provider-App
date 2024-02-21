import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int count = 10;

  void increament() {
    count++;
    notifyListeners();
  }

  void decreament() {
    count--;
    notifyListeners();
  }
}
