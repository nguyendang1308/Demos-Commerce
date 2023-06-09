import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized'); //This is for sure :))
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }
}
