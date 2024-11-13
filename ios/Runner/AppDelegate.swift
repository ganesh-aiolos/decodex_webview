import UIKit
import Flutter
import JitsiMeetSDK
import FirebaseCore

//import Firebase


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, FlutterStreamHandler {
    
    var jitsiViewController: JitsiMeetWrapperViewController?
    var eventSink: FlutterEventSink?
    var controller: FlutterViewController?
    
    
     var CHANNEL_NAME = "com.lilacinsights.doctorsapp"
    var JITSI_EVENT_CHANNEL_NAME = "com.lilacinsights.doctorsapp/jitsi_event_channel"
  
    
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
          FirebaseApp.configure();
        var controller  = window?.rootViewController as! FlutterViewController;
             self.controller=controller;
            
             
             let channel = FlutterMethodChannel(name: CHANNEL_NAME, binaryMessenger: controller.binaryMessenger)
             channel.setMethodCallHandler(handle)
                   // Setup event channel for conference events
                   let eventChannel = FlutterEventChannel(name: JITSI_EVENT_CHANNEL_NAME, binaryMessenger: controller.binaryMessenger)
                   eventChannel.setStreamHandler(self)
        if #available(iOS 10.0, *) {
                      UNUserNotificationCenter.current().delegate = self as UNUserNotificationCenterDelegate
                    }
        
        GeneratedPluginRegistrant.register(with: self)
    
        //FlutterDownloaderPlugin.setPluginRegistrantCallback(registerPlugins)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
              if (call.method == "start_jitsi_activity") {
                  
                  let defaultOptions = JitsiMeetConferenceOptions.fromBuilder { (builder) in
                           // for JaaS replace url with https://8x8.vc
                           builder.serverURL = URL(string: "https://jitsi-demo.aiolos.solutions")
                           // for JaaS use the obtained Jitsi JWT
                           // builder.token = "SampleJWT"
                           builder.setFeatureFlag("welcomepage.enabled", withValue: false)
                           // Set different feature flags
                           //builder.setFeatureFlag("toolbox.enabled", withBoolean: false)
                           //builder.setFeatureFlag("filmstrip.enabled", withBoolean: false)
                       }
                       
                       JitsiMeet.sharedInstance().defaultConferenceOptions = defaultOptions
                  joinMeeting(call, result: result)
                  return
              } else if (call.method == "setAudioMuted") {
                  setAudioMuted(call, result: result)
                  return
              } else if (call.method == "hangUp") {
                  hangUp(call, result: result)
                  return
              }
          }

          private func joinMeeting(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
              // As a general rule: Don't set options when they are null as
              // this could override (reset) configurations from the URL.

              let arguments = call.arguments as! [String: Any]

              let options = JitsiMeetConferenceOptions.fromBuilder { (builder) in
                 
                  let roomName = arguments["roomId"] as! String
                  if (roomName.trimmingCharacters(in: .whitespaces).isEmpty) {
                      result(FlutterError.init(
                              code: "400",
                              message: "room is empty in arguments for method: joinMeeting",
                              details: "room is empty in arguments for method: joinMeeting"
                      ))
                      return
                  }
                  builder.room = roomName

                  // Otherwise uses default public jitsi meet URL

                 builder.serverURL = URL(string: "https://jitsi-demo.aiolos.solutions");


                  let displayName = arguments["userDisplayName"] as? String
                        
                             let avatarUrlString = arguments["userProfilePicUrl"] as? String
                  
                 

                           
                  builder.userInfo = JitsiMeetUserInfo(displayName: displayName, andEmail: "", andAvatar: URL(string: avatarUrlString ?? ""))

                  
                  builder.setFeatureFlag(FeatureFlagClass.WELCOME_PAGE_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.CLOSE_CAPTIONS_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.INVITE_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.ADD_PEOPLE_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.LIVE_STREAMING_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.MEETING_NAME_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.RECORDING_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.TOOLBOX_ALWAYS_VISIBLE, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.CALENDAR_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.RAISE_HAND_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.MEETING_PASSWORD_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.PIP_ENABLED, withValue:true)
                  builder.setFeatureFlag(FeatureFlagClass.CALL_INTEGRATION_ENABLED, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.TOOLBOX_ALWAYS_VISIBLE, withValue:false)
                  builder.setFeatureFlag(FeatureFlagClass.TILE_VIEW_ENABLED, withValue:false)
                  builder.setFeatureFlag("notifications.enabled", withValue:false)
                  builder.setFeatureFlag("raise-hand.enabled", withValue:false)
                  builder.setFeatureFlag("meeting-password.enabled", withValue:false)
                  builder.setFeatureFlag("overflow-menu.enabled", withValue:false)
                  builder.setFeatureFlag("chat.poll.enable", withValue:false)
                  
                
              }

              jitsiViewController = JitsiMeetWrapperViewController.init(options: options, eventSink: eventSink!)

              // In order to make pip mode work.
              jitsiViewController!.modalPresentationStyle = .overFullScreen
              
              self.controller?.present(jitsiViewController!, animated: true)
              result(nil)
          }

          private func setAudioMuted(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
              let arguments = call.arguments as! [String: Any]
              let isMuted = arguments["isMuted"] as? Bool ?? false
              jitsiViewController?.sourceJitsiMeetView?.setAudioMuted(isMuted)
              result(nil)
          }

          private func hangUp(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
              jitsiViewController?.sourceJitsiMeetView?.hangUp()
              result(nil)
          }

          // FlutterStreamHandler methods

          public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
              eventSink = events
              return nil
          }

          public func onCancel(withArguments arguments: Any?) -> FlutterError? {
            eventSink = nil;
              return nil
          }
}

private func registerPlugins(registry: FlutterPluginRegistry) {
    /*if (!registry.hasPlugin("FlutterDownloaderPlugin")) {
        FlutterDownloaderPlugin.register(with: registry.registrar(forPlugin: "FlutterDownloaderPlugin") as! FlutterPluginRegistrar)
    }*/
}

  
