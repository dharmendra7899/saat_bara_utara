import 'package:flutter/foundation.dart';

/// This is the provider class for the theme.
/// It is used to toggle between dark and light theme.
/// It uses shared preferences to store the theme.
class ThemeProvider extends ChangeNotifier {
  // final String _key = 'theme';
  // late FlutterSecureStorage _prefs;
  // late SharedPreferences _preferences;
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  ThemeProvider() {
    _darkTheme = false;
    //_initPrefs();
  }

/*  void _initPrefs() async {
    _preferences = const SharedPreferences();
    _darkTheme = (await _prefs.read(key: _key) == 'true');
    notifyListeners();
  }*/

  /* void toggleTheme() {
    _darkTheme = !_darkTheme;
    _prefs.write(key: _key, value: _darkTheme ? 'true' : 'false');
    notifyListeners();
  }*/
}
