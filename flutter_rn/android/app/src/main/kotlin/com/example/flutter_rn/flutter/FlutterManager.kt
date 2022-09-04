package com.example.flutter_rn.flutter

import android.content.Context
import android.content.Intent
import com.example.flutter_rn.MainActivity
import com.example.flutter_rn.ReactNativeActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

object FlutterManager {
    private lateinit var engine: FlutterEngine

    fun setupChannels(context: Context, engine: FlutterEngine) {
        this.engine = engine

        MethodChannel(
            engine.dartExecutor.binaryMessenger,
            "FlutterChannel"
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "show_rn" -> {
                    showReactNativeActivity(context)
                    result.success(true)
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun showReactNativeActivity(context: Context) {
        val rnIntent = Intent(context, ReactNativeActivity::class.java)
        context.startActivity(rnIntent)
    }
}
