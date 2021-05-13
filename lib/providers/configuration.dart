import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class Configurations with ChangeNotifier {
  final List<Map<String, dynamic>> _colorList = [
    {'color': Colors.red, 'name': 'Red'},
    {'color': Colors.blue, 'name': 'Blue'},
    {'color': Colors.green, 'name': 'Green'},
    {'color': Colors.grey, 'name': 'Grey'},
    {'color': Colors.amber, 'name': 'Amber'},
  ];

  List<Map<String, dynamic>> get colorlist {
    return [..._colorList];
  }

  ThemeMode _currentTheme = ThemeMode.system;
  Color _currentColor = Colors.amber;
 

  ThemeMode get themeMode => _currentTheme;
  Color get colorApp => _currentColor;



  set themeMode(ThemeMode themeMode) {
    _currentTheme = themeMode;
    notifyListeners();
  }

  set colorApp(Color colorApp) {
    _currentColor = colorApp;
    notifyListeners();
  }
}
