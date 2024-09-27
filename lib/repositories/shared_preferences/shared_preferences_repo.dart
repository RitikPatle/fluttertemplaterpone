import 'package:shared_preferences/shared_preferences.dart';
import 'package:templaterpone/utils/app_functions.dart';

class SharedPreferencesRepo {
  static late SharedPreferences _prefs;

  static void initializeSharedPreferencesRepo() async {
    try {
      _prefs = await SharedPreferences.getInstance();
    } catch (e) {
      AppFunctions.printError(
        methodName: "SharedPreferencesRepo > initializeSharedPreferencesRepo",
        errorString: e,
      );
    }
  }

  static String getDataFromSharedPreference({required String key}) {
    try {
      return _prefs.getString(key) ?? "";
    } catch (e) {
      AppFunctions.printError(
        methodName:
            "SharedPreferencesRepo > getDataFromSharedPreference [ Key : $key ]",
        errorString: e,
      );
      return "";
    }
  }

  static void setDataInSharedPreferences({
    required String key,
    required String value,
  }) {
    try {
      _prefs.setString(key, value);
    } catch (e) {
      AppFunctions.printError(
        methodName:
            "SharedPreferencesRepo > setDataInSharedPreferences [ Key : $key ]",
        errorString: e,
      );
    }
  }

  static void resetDataInSharedPreferences({
    required String key,
    String? value,
  }) {
    try {
      _prefs.setString(key, value ?? "");
    } catch (e) {
      AppFunctions.printError(
        methodName:
            "SharedPreferencesRepo > resetDataInSharedPreferences [ Key : $key ]",
        errorString: e,
      );
    }
  }
}
