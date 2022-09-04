import 'package:shared_preferences/shared_preferences.dart';

class FrameworkHandler {
  static final sharedInstance = FrameworkHandler._init();
  FrameworkHandler._init();

  late SharedPreferences _preferences;
  bool get isReactNative => _preferences.getBool('use_rn') ?? false;

  void setupStore(SharedPreferences pref) {
    _preferences = pref;
  }

  void useReactNative() {
    _preferences.setBool('use_rn', true);
  }

  void useFlutter() {
    // flutter.use_rn is the key on the native side
    _preferences.setBool('use_rn', false);
  }
}
