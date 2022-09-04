import 'package:flutter/material.dart';
import 'package:flutter_rn/channel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              // go to react native and save this change
              FlutterChannel.sharedInstance.showReactNative();
            },
            icon: const Icon(Icons.change_circle),
          ),
        ],
      ),
      body: const Center(
        child: Text('Hello World in Flutter'),
      ),
    );
  }
}
