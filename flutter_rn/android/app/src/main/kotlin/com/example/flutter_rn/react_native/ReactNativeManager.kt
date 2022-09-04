package com.example.flutter_rn.react_native

import android.content.Intent
import com.example.flutter_rn.MainActivity
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import io.flutter.embedding.android.FlutterActivity

class ReactNativeManager(reactContext: ReactApplicationContext) :
    ReactContextBaseJavaModule(reactContext) {
    override fun getName(): String {
        return "ReactNativeManager"
    }

    @ReactMethod
    fun showFlutter() {
        val context = reactApplicationContext
        val flutterIntent = Intent(context, MainActivity::class.java)
        flutterIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        context.startActivity(flutterIntent)

        // set flag to false so that Flutter knows if react native should be shown
        // print out all keys from shared preference
        val sharedPreferences = context.getSharedPreferences(
            "FlutterSharedPreferences",
            FlutterActivity.MODE_PRIVATE
        )
        sharedPreferences.edit().putBoolean("flutter.use_rn", false).apply()
    }
}
