import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  SplashController _splashController = Get.put(SplashController());
  AppUpdateController controller = Get.put(AppUpdateController());
  @override
  void initState() {
    checkAppVersion();
    super.initState();
  }

  Future<void> checkAppVersion() async {
    if (Platform.isAndroid) {
      await controller.checkAppUpdate(16, 'android', context);
    } else if (Platform.isIOS) {
      await controller.checkAppUpdate(6, 'ios', context);
    }
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
