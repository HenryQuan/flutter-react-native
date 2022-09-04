package com.example.flutter_rn.react_native

import android.content.Context
import android.content.Intent
import com.example.flutter_rn.MainActivity
import com.example.flutter_rn.flutter.FlutterManager
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
        val flutterIntent = Intent(reactApplicationContext, MainActivity::class.java)
        flutterIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        reactApplicationContext.startActivity(flutterIntent)
    }
}
