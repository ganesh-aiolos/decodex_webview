import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../../app/DTRFThemes.dart';



class OrderTestDTRFScreen extends StatefulWidget {
  const OrderTestDTRFScreen({Key? key}) : super(key: key);

  @override
  _DTRFState createState() => _DTRFState();
}

class _DTRFState extends State<OrderTestDTRFScreen> {

  CookieManager cookieManager = CookieManager.instance();
  late InAppWebViewController webView;



  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();



  @override
  void dispose() {

    super.dispose();
  }
  bool isInitStateDone = false;


  void initState() {


    super.initState();

    // Enable virtual display.
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
       appBar: AppBar(
         title: Text(
           "AI-PI",
           style: TextStyle(
               fontSize: 20,
               fontFamily: fontFamily,
               color: cf.textColor,
               fontWeight: FontWeight.w400),
         ),
         toolbarHeight: bv! * 8.0,
         leadingWidth: bv! * 10,
         elevation: 0.0,
         centerTitle: true,
         backgroundColor: cf.white,

       ),

      body: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Stack(
            children: [
              InAppWebView(
                gestureRecognizers: Set()
                  ..add(Factory<VerticalDragGestureRecognizer>(
                      () => VerticalDragGestureRecognizer())),
                onWebViewCreated: (InAppWebViewController controller) {
                  webView = controller;
                  debugPrint("enter in onWebViewCreated");
                },
                shouldOverrideUrlLoading: (controller, navigationAction) async {
                  debugPrint("enter in shouldOverrideUrlLoading");
                  return NavigationActionPolicy.ALLOW;
                },
                onLoadHttpError: (controller, url, statusCode, description) {
                  debugPrint("enter in onLoadHttpError :" + description);
                },
                onLoadError: (controller, url, code, message) {
                  debugPrint("enter in onLoadError :" + message);
                },
                onLoadStop: (controller, url) {
                  debugPrint("enter in onLoadStop :" + "$url");
                },
                onProgressChanged: (controller, progress) {

                  debugPrint("enter in onProgressChanged :" + "$progress");
                },
                onConsoleMessage: (controller, consoleMessage) {
                  debugPrint("enter in consoleMessage :" +
                      "${consoleMessage.message}");
                },
                initialUrlRequest: URLRequest(url: Uri.parse("https://decodex-dev.encore.health")),
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                        javaScriptEnabled: true,
                        useShouldOverrideUrlLoading: true,
                        mediaPlaybackRequiresUserGesture: false),
                    android: AndroidInAppWebViewOptions(
                      useHybridComposition: true,
                    ),
                    ios: IOSInAppWebViewOptions(
                      allowsInlineMediaPlayback: true,
                    )),
              ),

            ],
          )),
    );
  }


}
