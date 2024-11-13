
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:flutter/foundation.dart';
import 'UI/Splash/Splash.dart';
import 'app/DTRFThemes.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();




final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();


void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);


    runApp(MyAppGetX());

}



class MyAppGetX extends StatelessWidget {
  MyAppGetX._internal(); // private named constructor

  static final MyAppGetX instance = MyAppGetX._internal();

  factory MyAppGetX() => instance;



  Widget build(BuildContext context) {
    debugPrint("Enter in MyApp build");
    return  MaterialApp(
      navigatorObservers: [routeObserver],
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: cf.p1,
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: cf.p1,
          ),
          fontFamily: "Poppins"),



      home: Splash(),
    );
  }
}
