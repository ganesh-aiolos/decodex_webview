import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Screens/OrderTestDTRF/order_test_dtrf.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    print("time Start");
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  navigationPage() async {

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => OrderTestDTRFScreen()),
          (route) => false, // This removes all previous routes
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: SvgPicture.asset('assets/images/app_logo.svg',
          width: 65.0, height: 65.0),
    );
  }
}
