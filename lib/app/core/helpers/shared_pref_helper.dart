import 'package:pantera/app/core/constant/string_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String? getUid() {
    return _prefs?.getString(StringConst.uidKey);
  }

  bool getIsFirst() {
    return _prefs?.getBool(StringConst.isFirstKey) ?? true;
  }

  Future<void> setIsFirst() async {
    await _prefs?.setBool(StringConst.isFirstKey, false);
  }

  Future<void> setUid(String uid) async {
    await _prefs?.setString(StringConst.uidKey, uid);
  }

  Future<void> clearAllKey(List<String> keys) async {
    for (var key in keys) {
      await _prefs?.remove(key);
    }
  }
}
