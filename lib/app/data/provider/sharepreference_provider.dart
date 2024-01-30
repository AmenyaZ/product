import 'dart:async';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferenceProvider extends GetxService {
  SharedPreferences? prefs;


  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences? get preferences => prefs;

  void saveInt(String key, int data) async {
    await prefs?.setInt(key, data);
  }

  void saveBool(String key, bool data) async {
    await prefs?.setBool(key, data);
  }

  void saveString(String key, String data) async {
    await prefs?.setString(key, data);
  }

  Future<int> getInt(String key) async {
    return prefs?.getInt('counter') ?? 0;
  }

  Future<bool> getBool(String key) async {
    return prefs?.getBool(key) ?? false;
  }

  Future<String> getString(String key) async {
    return prefs?.getString(key) ?? "";
  }

  void deleteItem(String key) async {
    await prefs?.remove(key);
  }
}
