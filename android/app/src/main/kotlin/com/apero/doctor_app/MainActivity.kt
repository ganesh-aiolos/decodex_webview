package com.apero.doctor_app

import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
/*import org.jitsi.meet.sdk.JitsiMeet
import org.jitsi.meet.sdk.JitsiMeetConferenceOptions
import org.jitsi.meet.sdk.JitsiMeetUserInfo*/


class MainActivity: FlutterActivity() , MethodChannel.MethodCallHandler {

    private val CHANNEL_NAME = "com.lilacinsights.doctorsapp"
    private val JITSI_EVENT_CHANNEL_NAME = "com.lilacinsights.doctorsapp/jitsi_event_channel"
    private val TAG = "MainActivity";


    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val channel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL_NAME
        )
        val eventChannel = EventChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            JITSI_EVENT_CHANNEL_NAME
        )
        channel.setMethodCallHandler(this)
        eventChannel.setStreamHandler(JitsiMeetEventStreamHandler.instance)
    }


    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "start_jitsi_activity" -> {

                openMeeting(call.argument<String>("roomId") as String,call.argument<String>("userDisplayName") as String,call.argument<String>("userProfilePicUrl") as String);
            }
            else -> result.notImplemented()
        }
    }

    private fun openMeeting(roomId: String,userDisplayName: String,userAvtarUrl: String) {
      /*  Log.e(TAG, "roomId" + roomId);
        *//*val intent = Intent(this, JitsiMeetMainActivity::class.java)
        var bundle = Bundle();
        bundle.putString("roomId", roomId);
        intent.putExtras(bundle);*//*

        val serverURL: URL
        serverURL = try {
            // When using JaaS, replace "https://meet.jit.si" with the proper serverURL
            URL("https://jitsi-demo.aiolos.solutions")
        } catch (e: MalformedURLException) {
            e.printStackTrace()
            throw RuntimeException("Invalid server URL!")
        }


        val userInfo = JitsiMeetUserInfo();
        userInfo.displayName = userDisplayName;
        if (userAvtarUrl.isNotEmpty()) {
            userInfo.avatar = URL(userAvtarUrl)
        }

        val defaultOptions = JitsiMeetConferenceOptions.Builder()
            .setServerURL(serverURL)
            // When using JaaS, set the obtained JWT here
            //.setToken("MyJWT")
            // Different features flags can be set
            //.setFeatureFlag("toolbox.enabled", false)
            //.setFeatureFlag("filmstrip.enabled", false)
            .setUserInfo(userInfo)
            .setAudioOnly(true)
            .setAudioMuted(true)
            .setVideoMuted(true)
            .setFeatureFlag(FeatureFlagClass.WELCOME_PAGE_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.CLOSE_CAPTIONS_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.INVITE_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.ADD_PEOPLE_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.LIVE_STREAMING_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.MEETING_NAME_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.RECORDING_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.TOOLBOX_ALWAYS_VISIBLE, false)
            .setFeatureFlag(FeatureFlagClass.CALENDAR_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.RAISE_HAND_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.MEETING_PASSWORD_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.PIP_ENABLED, true)
            .setFeatureFlag(FeatureFlagClass.CALL_INTEGRATION_ENABLED, false)
            .setFeatureFlag(FeatureFlagClass.TOOLBOX_ALWAYS_VISIBLE, false)
            .setFeatureFlag(FeatureFlagClass.TILE_VIEW_ENABLED, false)
            .setFeatureFlag("notifications.enabled", false)
            .setFeatureFlag("raise-hand.enabled", false)
            .setFeatureFlag("meeting-password.enabled", false)
            .setFeatureFlag("overflow-menu.enabled", false)
            .setFeatureFlag("chat.poll.enable", false)
            .build()

        JitsiMeet.setDefaultConferenceOptions(defaultOptions)

        JitsiMeetPluginActivity.launchActivity(this,roomId)*/
    }
}
