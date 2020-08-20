import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  Future<SharedPreferences> _sharedPreference;
  static const String total_amount = "0.00";

  SharedPreferenceHelper() {
    _sharedPreference = SharedPreferences.getInstance();
  }

  //Total_Amount

  //Sets the total_amount to a new value and stores in sharedpreferences
  Future<void> setAmount(String amount) async {
    return await _sharedPreference.then((prefs) {
      return prefs.setString(total_amount, amount);
    });
  }

  //gets the total_amount stored in sharedpreferences.
  Future<String> get fetchAmount async{
    return await _sharedPreference.then((prefs) {
      return prefs.getString(total_amount);
    });
  }
}