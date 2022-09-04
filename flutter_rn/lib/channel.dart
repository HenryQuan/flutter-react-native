import 'package:flutter/services.dart';
import 'package:flutter_rn/selector.dart';

class FlutterChannel {
  static const MethodChannel _channel = MethodChannel('FlutterChannel');

  static final sharedInstance = FlutterChannel._init();
  FlutterChannel._init();

  void showReactNative() {
    _channel.invokeMethod('show_rn');
    FrameworkHandler.sharedInstance.useReactNative();
  }
}
