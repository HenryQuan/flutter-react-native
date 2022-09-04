package com.example.flutter_rn.flutter

import android.content.Intent
import com.example.flutter_rn.DemoApplication
import com.example.flutter_rn.MainActivity
import com.example.flutter_rn.ReactNativeActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

object FlutterManager {
    private lateinit var engine: FlutterEngine

    fun setupChannels(engine: FlutterEngine) {
        this.engine = engine
        MethodChannel(
            engine.dartExecutor.binaryMessenger,
            "FlutterChannel"
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "show_rn" -> {
                    showReactNativeActivity()
                    result.success(true)
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun showReactNativeActivity() {
        DemoApplication.context?.let {
            val rnIntent = Intent(it, ReactNativeActivity::class.java)
            it.startActivity(rnIntent)
        }
    }

    fun showFlutterActivity() {
        DemoApplication.context?.let {
            val flutterIntent = Intent(it, MainActivity::class.java)
            it.startActivity(flutterIntent)
        }
    }
}
