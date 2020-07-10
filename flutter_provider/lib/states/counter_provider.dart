import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  void incrementCounter() {
    _counter += 1;

    notifyListeners();
  }

  int get currentCounter => _counter;
}
