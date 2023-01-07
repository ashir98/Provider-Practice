import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light();

  ThemeData get currentTheme => _currentTheme;

  bool _isSwitched = false;
  bool get isSwitched => _isSwitched;

  void themeSwitch(bool themeSwitch) {

    if( themeSwitch == true){

      _currentTheme = ThemeData.dark();
      notifyListeners();
    }else{
      _currentTheme = ThemeData.light();
      notifyListeners();
    }
  }
}
