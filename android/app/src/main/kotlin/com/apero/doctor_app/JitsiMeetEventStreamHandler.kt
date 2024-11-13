package com.apero.doctor_app

import android.util.Log
import io.flutter.plugin.common.EventChannel
import java.io.Serializable

class JitsiMeetEventStreamHandler private constructor(): EventChannel.StreamHandler, Serializable {
    private  val TAG = "JitsiMeetEventStreamHandler"
    companion object {
        val instance = JitsiMeetEventStreamHandler()
    }

    private var eventSink: EventChannel.EventSink? = null

    override fun onListen(arguments: Any?, eventSink: EventChannel.EventSink?) {
        Log.d(TAG, "JitsiMeetEventStreamHandler.onListen")
        this.eventSink = eventSink
    }

    override fun onCancel(arguments: Any?) {
        Log.d(TAG, "JitsiMeetEventStreamHandler.onCancel")
        eventSink = null
    }

    fun onConferenceWillJoin(data: MutableMap<String, Any>?) {
        Log.d(TAG, "JitsiMeetEventStreamHandler.${JitsiMeetEventStreamHandlerEvent.onConferenceWillJoin}")
        data?.put(JitsiMeetEventStreamHandlerEvent.dataKey, JitsiMeetEventStreamHandlerEvent.onConferenceWillJoin)
        eventSink?.success(data)
    }

    fun onConferenceJoined(data: MutableMap<String, Any>?) {
        Log.d(TAG, "JitsiMeetEventStreamHandler.${JitsiMeetEventStreamHandlerEvent.onConferenceJoined}")
        data?.put(JitsiMeetEventStreamHandlerEvent.dataKey, JitsiMeetEventStreamHandlerEvent.onConferenceJoined)
        eventSink?.success(data)
    }

    fun onConferenceTerminated(data: MutableMap<String, Any>?) {
        Log.d(TAG, "JitsiMeetEventStreamHandler.${JitsiMeetEventStreamHandlerEvent.onConferenceTerminated}")
        data?.put(JitsiMeetEventStreamHandlerEvent.dataKey, JitsiMeetEventStreamHandlerEvent.onConferenceTerminated)
        eventSink?.success(data)
    }

    fun onPictureInPictureWillEnter() {
        Log.d(TAG, "JitsiMeetEventStreamHandler.${JitsiMeetEventStreamHandlerEvent.onPictureInPictureWillEnter}")
        val data : HashMap<String, String>
                = HashMap<String, String> ()
        data[JitsiMeetEventStreamHandlerEvent.dataKey] = JitsiMeetEventStreamHandlerEvent.onPictureInPictureWillEnter
        eventSink?.success(data)
    }

    fun onPictureInPictureTerminated() {
        Log.d(TAG, "JitsiMeetEventStreamHandler.${JitsiMeetEventStreamHandlerEvent.onPictureInPictureTerminated}")
        val data : HashMap<String, String>
                = HashMap<String, String> ()
        data[JitsiMeetEventStreamHandlerEvent.dataKey] = JitsiMeetEventStreamHandlerEvent.onPictureInPictureTerminated
        eventSink?.success(data)
    }

    fun onReadyToClose() {
        Log.d(TAG, "JitsiMeetEventStreamHandler.${JitsiMeetEventStreamHandlerEvent.onReadyToClose}")
        val data : HashMap<String, String>
                = HashMap<String, String> ()
        data[JitsiMeetEventStreamHandlerEvent.dataKey] = JitsiMeetEventStreamHandlerEvent.onReadyToClose
        eventSink?.success(data)
    }

    fun onMeetingScreenDestroy() {
        Log.d(TAG, "JitsiMeetEventStreamHandler.${JitsiMeetEventStreamHandlerEvent.onMeetingScreenDestroy}")
        val data : HashMap<String, String>
                = HashMap<String, String> ()
        data[JitsiMeetEventStreamHandlerEvent.dataKey] = JitsiMeetEventStreamHandlerEvent.onMeetingScreenDestroy
        eventSink?.success(data)
    }

    fun onConferenceInitialize() {
        Log.d(TAG, "JitsiMeetEventStreamHandler.${JitsiMeetEventStreamHandlerEvent.onConferenceInitialize}")
        val data : HashMap<String, String>
                = HashMap<String, String> ()
        data[JitsiMeetEventStreamHandlerEvent.dataKey] = JitsiMeetEventStreamHandlerEvent.onConferenceInitialize
        eventSink?.success(data)
    }

}