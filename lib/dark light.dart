import 'package:flutter/cupertino.dart';

import 'dar.dart';





class ModelTheme extends ChangeNotifier {
  late bool _isDark;
  late MyThemePreferences _preferences;
  bool get isDark => _isDark;

  ModelTheme() {
    _isDark = false;
    _preferences = MyThemePreferences();
    getPreferences();
  }
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }
  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}