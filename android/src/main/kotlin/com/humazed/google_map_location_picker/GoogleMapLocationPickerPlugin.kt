package com.humazed.google_map_location_picker

import android.app.Activity
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import androidx.annotation.UiThread
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.math.BigInteger
import java.security.MessageDigest

class GoogleMapLocationPickerPlugin : FlutterActivity()  {
    private val CHANNEL = "google_map_location_picker"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            onMethodCall
        }
    }

    onMethodCall(call: MethodCall, result: Result) {
        if (call.method == "getSigningCertSha1") {
            try {
                val info: PackageInfo = activity.packageManager.getPackageInfo(call.arguments<String>(), PackageManager.GET_SIGNATURES)
                for (signature in info.signatures) {
                    val md: MessageDigest = MessageDigest.getInstance("SHA1")
                    md.update(signature.toByteArray())

                    val bytes: ByteArray = md.digest()
                    val bigInteger = BigInteger(1, bytes)
                    val hex: String = String.format("%0" + (bytes.size shl 1) + "x", bigInteger)

                    result.success(hex)
                }
            } catch (e: Exception) {
                result.error("ERROR", e.toString(), null)
            }
        } else {
            result.notImplemented()
        }
    }
}
