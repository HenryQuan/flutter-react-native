import 'package:flutter/material.dart';
import 'package:flutter_rn/channel.dart';
import 'package:flutter_rn/page/home.dart';
import 'package:flutter_rn/selector.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  print('prefs: $prefs');
  FrameworkHandler.sharedInstance.setupStore(prefs);
  if (FrameworkHandler.sharedInstance.isReactNative) {
    FlutterChannel.sharedInstance.showReactNative();
  } else {
    print("Running Flutter");
    runApp(const DemoApp());
  }
}

class DemoApp extends StatelessWidget {
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
