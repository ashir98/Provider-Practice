import 'package:flutter/cupertino.dart';

class SliderProvider with ChangeNotifier {
  double _val = 1;
  double get val => _val;

  void setValue(double value) {
    _val = value;
    notifyListeners();
  }
}
