import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:collection';

class OrderTestDTRFScreen extends StatefulWidget {
  @override
  _InAppWebViewExampleScreenState createState() =>
      _InAppWebViewExampleScreenState();
}

class _InAppWebViewExampleScreenState extends State<OrderTestDTRFScreen> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewSettings settings = InAppWebViewSettings(

    allowUniversalAccessFromFileURLs: true,
    javaScriptEnabled: true,
    clearCache: true,
    mediaPlaybackRequiresUserGesture: false,
    allowsInlineMediaPlayback: true,
    iframeAllow: "camera; microphone",
    iframeAllowFullscreen: true,
    limitsNavigationsToAppBoundDomains: true, // Add this for iOS
    allowsBackForwardNavigationGestures: true, // Add this for iOS
  );

  PullToRefreshController? pullToRefreshController;

  late ContextMenu contextMenu;
  String url = "";
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {

    super.initState();

    contextMenu = ContextMenu(
        menuItems: [
          ContextMenuItem(
              id: 1,
              title: "Special",
              action: () async {
                print("Menu item Special clicked!");
                print(await webViewController?.getSelectedText());
                await webViewController?.clearFocus();
              })
        ],
        settings: ContextMenuSettings(hideDefaultSystemContextMenuItems: false),
        onCreateContextMenu: (hitTestResult) async {
          print("onCreateContextMenu");
          print(hitTestResult.extra);
          print(await webViewController?.getSelectedText());
        },
        onHideContextMenu: () {
          print("onHideContextMenu");
        },
        onContextMenuActionItemClicked: (contextMenuItemClicked) async {
          var id = contextMenuItemClicked.id;
          print("onContextMenuActionItemClicked: " +
              id.toString() +
              " " +
              contextMenuItemClicked.title);
        });

    pullToRefreshController = kIsWeb ||
        ![TargetPlatform.iOS, TargetPlatform.android]
            .contains(defaultTargetPlatform)
        ? null
        : PullToRefreshController(
      settings: PullToRefreshSettings(
        color: Colors.blue,
      ),
      onRefresh: () async {
        if (defaultTargetPlatform == TargetPlatform.android) {
          webViewController?.reload();
        } else if (defaultTargetPlatform == TargetPlatform.iOS) {
          webViewController?.loadUrl(
              urlRequest:
              URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(children: <Widget>[

              Expanded(
                child: Stack(
                  children: [


                    InAppWebView(
                      key: webViewKey,
                      initialUrlRequest: URLRequest(url: WebUri('https://reclaimnow.ai')),
                      initialUserScripts: UnmodifiableListView<UserScript>([]),
                      initialSettings: settings,
                      contextMenu: contextMenu,

                      onReceivedHttpError: (controller, request, errorResponse) {
                        print("HTTP Error: Status ${errorResponse.statusCode}");
                        print("Response: ${errorResponse.reasonPhrase}");
                      },

                      onReceivedServerTrustAuthRequest: (controller, challenge) async {
                        print("Certificate Details:");
                        print("Host: ${challenge.protectionSpace.host}");
                        print("Protocol: ${challenge.protectionSpace.protocol}");
                        print("Method: ${challenge.protectionSpace.authenticationMethod}");
                        print("SSL Error: ${challenge.protectionSpace.sslError?.message}");

                        /*if (challenge.protectionSpace.host == "decodex-dev.encore.health") {
                          return ServerTrustAuthResponse(
                              action: ServerTrustAuthResponseAction.PROCEED
                          );
                        }*/
                        return ServerTrustAuthResponse(
                            action: ServerTrustAuthResponseAction.PROCEED
                        );
                      },

                      onWebViewCreated: (controller) async {
                        print("WebView Created");
                        webViewController = controller;
                      },

                      onLoadStart: (controller, url) {
                        print("Load Started: ${url?.toString()}");
                        setState(() {
                          this.url = url.toString();
                          urlController.text = this.url;
                        });
                      },

                      onProgressChanged: (controller, progress) {
                        print("Loading Progress: $progress%");
                        if (progress == 100) {
                          pullToRefreshController?.endRefreshing();
                        }
                        setState(() {
                          this.progress = progress / 100;
                        });
                      },

                      onLoadStop: (controller, url) async {
                        print("Load Completed: ${url?.toString()}");
                        pullToRefreshController?.endRefreshing();
                        setState(() {
                          this.url = url.toString();
                          urlController.text = this.url;
                        });
                      },

                      onReceivedError: (controller, request, error) {
                        print("WebView Error:");
                        print("Code: ${error.type}");
                        print("Description: ${error.description}");
                        print("URL: ${request.url}");
                        print("Method: ${request.method}");
                        print("Headers: ${request.headers}");
                        pullToRefreshController?.endRefreshing();
                      },

                      onConsoleMessage: (controller, consoleMessage) {
                        print("Console: ${consoleMessage.message}");
                      },

                      pullToRefreshController: pullToRefreshController,
                    ),

                  ],
                ),
              ),
              /*ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: Icon(Icons.arrow_back),
                    onPressed: () {
                      webViewController?.goBack();
                    },
                  ),
                  ElevatedButton(
                    child: Icon(Icons.arrow_forward),
                    onPressed: () {
                      webViewController?.goForward();
                    },
                  ),
                  ElevatedButton(
                    child: Icon(Icons.refresh),
                    onPressed: () {
                      webViewController?.reload();
                    },
                  ),
                ],
              ),*/
            ])));
  }
}

/*
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
                onReceivedServerTrustAuthRequest: (controller, challenge) async {
                  // Bypass SSL errors (not recommended for production)
                  return ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.PROCEED);
                },
                initialUrlRequest: URLRequest(url: Uri.parse("https://decodex-dev.encore.health")),
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                      incognito: true,
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
*/
