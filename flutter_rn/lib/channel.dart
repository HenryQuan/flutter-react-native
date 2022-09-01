import 'package:flutter/services.dart';

class FlutterChannel {
  static const MethodChannel _channel = MethodChannel('FlutterChannel');

  static final sharedInstance = FlutterChannel._init();
  FlutterChannel._init();

  void showReactNative() {
    _channel.invokeMethod('show_rn');
  }
}
