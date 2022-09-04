package com.example.flutter_rn

import android.app.Application
import android.content.Context

class DemoApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        appContext = applicationContext
    }

    companion object {
        private var appContext: Context? = null
        val context: Context?
            get() = appContext
    }
}
