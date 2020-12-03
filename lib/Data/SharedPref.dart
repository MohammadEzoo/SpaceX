import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPref._();
  SharedPreferences _preferences;

  static final SharedPref pref = SharedPref._();

  Future<SharedPreferences> get _getSharedPref async {
    if (_preferences != null)
      return _preferences;
    else {
      _preferences = await SharedPreferences.getInstance();

      return _preferences;
    }
  }

  clear() async {
    final SharedPreferences p = await _getSharedPref;
    await p.clear();

    return;
  }

  Future<void> saveLaunch(String launchId) async {
    final SharedPreferences p = await _getSharedPref;
    final oldFav = p.getStringList("favLaunches") ?? [];
    oldFav.add(launchId.toString());
    await p.setStringList("favLaunches", oldFav);
  }

  Future<void> removeLaunch(String launchId) async {
    final SharedPreferences p = await _getSharedPref;
    final oldFav = p.getStringList("favLaunches") ?? [];
    oldFav.remove(launchId.toString());
    await p.setStringList("favLaunches", oldFav);
  }

  Future<List<String>> getFavLaunch() async {
    final SharedPreferences p = await _getSharedPref;
    final oldFav = p.getStringList("favLaunches") ?? [];

    return oldFav;
  }
}
