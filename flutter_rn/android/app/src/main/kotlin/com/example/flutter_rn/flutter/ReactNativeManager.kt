package com.example.flutter_rn.flutter

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod

class ReactNativeManager(reactContext: ReactApplicationContext) :
    ReactContextBaseJavaModule(reactContext) {
    override fun getName(): String {
        return "ReactNativeManager"
    }

    @ReactMethod
    fun showFlutter() {
        FlutterManager.showFlutterActivity()
    }
}
