package com.apero.doctor_app

import android.app.Activity
import android.app.KeyguardManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.res.Configuration
import android.os.Build
import android.os.Bundle
import android.util.Log
import android.view.WindowManager
/*import org.jitsi.meet.sdk.BroadcastEvent
import org.jitsi.meet.sdk.JitsiMeetActivity
import org.jitsi.meet.sdk.JitsiMeetConferenceOptions*/

class JitsiMeetPluginActivity : Activity() /*JitsiMeetActivity()*/ {
    private val TAG = "JitsiMeetPluginActivity"

    companion object {
        @JvmStatic
        fun launchActivity(
            context: Context?,
            roomId: String
        ) {
            /*val options = JitsiMeetConferenceOptions.Builder()
                // When using JaaS, set the obtained JWT here
                //.setToken("MyJWT")
                // Different features flags can be set
                //.setFeatureFlag("toolbox.enabled", false)
                //.setFeatureFlag("filmstrip.enabled", false)
                .setRoom(roomId)

                .build()

            val intent = Intent(context, JitsiMeetPluginActivity::class.java)
            intent.action = "org.jitsi.meet.CONFERENCE"
            intent.putExtra("JitsiMeetConferenceOptions", options)
            if (context !is Activity) {
              //  intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
            }
            context!!.startActivity(intent)*/


        }
    }

   /* var onStopCalled: Boolean = false;
    override fun onCreate(savedInstanceState: Bundle?) {
        Log.d(TAG, "JitsiMeetPluginActivity.onConferenceInitialize")
        JitsiMeetEventStreamHandler.instance.onConferenceInitialize()
        super.onCreate(savedInstanceState)
    }

    override fun onPictureInPictureModeChanged(
        isInPictureInPictureMode: Boolean,
        newConfig: Configuration
    ) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode, newConfig)

        if (isInPictureInPictureMode) {
            JitsiMeetEventStreamHandler.instance.onPictureInPictureWillEnter()
        } else {
            JitsiMeetEventStreamHandler.instance.onPictureInPictureTerminated()
        }

         if (isInPictureInPictureMode == false && onStopCalled) {
             // Picture-in-Picture mode has been closed, we can (should !) end the call
             jitsiView.dispose()
         }
    }


    override fun onStop() {
        super.onStop()
        onStopCalled = true;

    }

    override fun onResume() {
        super.onResume()
        onStopCalled = false
    }

    override fun onConferenceWillJoin(data: HashMap<String, Any>) {
        Log.d(TAG, String.format("JitsiMeetPluginActivity.onConferenceWillJoin: %s", data))
        JitsiMeetEventStreamHandler.instance.onConferenceWillJoin(data)
        super.onConferenceWillJoin(data)
    }

    override fun onConferenceJoined(data: HashMap<String, Any>) {
        Log.d(TAG, String.format("JitsiMeetPluginActivity.onConferenceJoined: %s", data))
        JitsiMeetEventStreamHandler.instance.onConferenceJoined(data)
        super.onConferenceJoined(data)
    }

    override fun onConferenceTerminated(data: HashMap<String, Any>) {

        Log.d(TAG, String.format("JitsiMeetPluginActivity.onConferenceTerminated: %s", data))
        JitsiMeetEventStreamHandler.instance.onConferenceTerminated(data)
        super.onConferenceTerminated(data)
    }

    override fun onReadyToClose() {
        Log.d(TAG, "JitsiMeetPluginActivity.onReadyToClose")
        JitsiMeetEventStreamHandler.instance.onReadyToClose()
        super.onReadyToClose()
    }


    override fun onDestroy() {
        super.onDestroy()
        Log.d(TAG, "JitsiMeetPluginActivity.onMeetingScreenDestroy")
        JitsiMeetEventStreamHandler.instance.onMeetingScreenDestroy()


    }

    private fun turnScreenOnAndKeyguardOff() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O_MR1) {
            // For newer than Android Oreo: call setShowWhenLocked, setTurnScreenOn
            setShowWhenLocked(true)
            setTurnScreenOn(true)

            // If you want to display the keyguard to prompt the user to unlock the phone:
            val keyguardManager = getSystemService(Context.KEYGUARD_SERVICE) as KeyguardManager
            keyguardManager?.requestDismissKeyguard(this, null)
        } else {
            // For older versions, do it as you did before.
            window.addFlags(
                WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED
                        or WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD
                        or WindowManager.LayoutParams.FLAG_FULLSCREEN
                        or WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON
                        or WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON
                        or WindowManager.LayoutParams.FLAG_ALLOW_LOCK_WHILE_SCREEN_ON
            )
        }
    }

    private fun turnScreenOffAndKeyguardOn() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O_MR1) {
            setShowWhenLocked(false)
            setTurnScreenOn(false)
        } else {
            window.clearFlags(
                WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED
                        or WindowManager.LayoutParams.FLAG_FULLSCREEN
                        or WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD
                        or WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON
                        or WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON
                        or WindowManager.LayoutParams.FLAG_ALLOW_LOCK_WHILE_SCREEN_ON
            )
        }
    }*/


}