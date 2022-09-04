package com.example.flutter_rn

import com.example.flutter_rn.flutter.FlutterManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        FlutterManager.setupChannels(this, flutterEngine)
    }
}
