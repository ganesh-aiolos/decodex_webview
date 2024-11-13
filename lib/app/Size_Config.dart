import 'package:flutter/widgets.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static double? screenWidth;
  static late double screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static late double width ;
  static late double height ;
  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight / 100;
    width = MediaQuery.of(context).size.width / 360;
    height = MediaQuery.of(context).size.height / 800;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
    print(blockSizeVertical);
  }
}
