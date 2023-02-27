

import 'package:app1/settings/styles.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeProvider(BuildContext context) {
    _themeData = StylesApp.lightTheme(context);
  }
  ThemeData? _themeData;
  getthemeData() => this._themeData;
  setThemeData(ThemeData theme) {
    this._themeData = theme;
    notifyListeners();
  }
}
