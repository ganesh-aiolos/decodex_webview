import 'dart:developer';
import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';


import '../../UI/Screens/OrderTestDTRF/order_test_dtrf.dart';
import 'NewColorFile.dart';
import 'Size_Config.dart';

NewColorFile cf = new NewColorFile();
double? bv = 0.0;
double? bh = 0.0;
double height = 0.0;
double width = 0.0;
BuildContext? context;
String fontFamily = 'Poppins';
Color whiteWithOpacity = Color(0xffFFFFFF).withOpacity(0.7);
Color greyColor = Color(0xffD0D5DD);
Color appointmentCardColor = Color(0xffAE7FB8);
Color appointmentCardColor1 = Color(0xff7A2F9C);
const Color blue = Color(0xff233862);
const Color blue1 = Color(0xff1F274A);
const Color white = Color(0xffFFFFFF);
const Color KCOLOR_LigthPink = Color(0xFFA3A9BF);
const Color KPrimarDark = Color(0xFF954EB5);
const Color TextColor = Color(0xFF954EB5);
const KLight_Purple12 = Color(0xFF9F4D9F);
final opacityWhite = Color(0xffFFFFFF).withOpacity(1);
const textFieldTextColor = Color(0xFF2C3550);
final textFieldHintColor = Color(0xFF2C3550).withOpacity(0.5);
final textFieldReadOnlyColor = Color(0xFF2C3550).withOpacity(0.5);
final textFieldErrorColor = Color(0xFFED1B34);

const KboxShaddow = [
  BoxShadow(
      color: Color.fromRGBO(236, 232, 236, 1),
      offset: Offset(1, 6),
      blurRadius: 22)
];

const String placeholder_doc = 'assets/images/doctor_holder.png';
const String article_placeholder = "assets/images/article_headplaceholder.png";
const String KIMAGES_DOC =
    "https://lilac-dtrf.s3.ap-south-1.amazonaws.com/doctor/";
const KH1 = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    color: TextColor,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal);
const KH2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 22,
    color: TextColor,
    fontFamily: 'Poppins');
const KH3 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: TextColor,
    fontFamily: 'Poppins');
const KH4 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: TextColor,
    fontFamily: 'Poppins');
const KH5 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 18,
    color: TextColor,
    fontFamily: 'Poppins');
const KH5_SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize: 18,
    fontFamily: 'Poppins');
const KH6 = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize: 16,
    fontFamily: 'Poppins');
const KH6_normal = TextStyle(
    fontWeight: FontWeight.normal,
    color: TextColor,
    fontSize: 16,
    fontFamily: 'Poppins');
const KH6_Medium = TextStyle(
    fontWeight: FontWeight.w500,
    color: TextColor,
    fontSize: 16,
    fontFamily: 'Poppins');
const KH6_SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize: 15,
    fontFamily: 'Poppins');
const KH7 = TextStyle(
    fontWeight: FontWeight.normal,
    color: TextColor,
    fontSize: 14,
    fontFamily: 'Poppins');
const KH7_Medium = TextStyle(
    fontWeight: FontWeight.w500,
    color: TextColor,
    fontSize: 14,
    fontFamily: 'Poppins');
const KH7_SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize: 14,
    fontFamily: 'Poppins');
const KH8_SemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    color: TextColor,
    fontSize: 12,
    fontFamily: 'Poppins');
const KH8 = TextStyle(
    fontWeight: FontWeight.normal,
    color: TextColor,
    fontSize: 12,
    fontFamily: 'Poppins');

const KH9_bold = TextStyle(
    fontWeight: FontWeight.normal,
    color: TextColor,
    fontSize: 11,
    fontFamily: 'Poppins');
const KH9 = TextStyle(
    fontWeight: FontWeight.normal,
    color: TextColor,
    fontSize: 10,
    fontFamily: 'Poppins');
final KH10 = TextStyle(
    fontWeight: FontWeight.w400,
    color: Color(0xff233862).withOpacity(0.5),
    fontSize: 14,
    fontFamily: 'Poppins');
final Kh28 = TextStyle(
    fontWeight: FontWeight.w400,
    color: blue.withOpacity(0.5),
    fontSize: 24,
    fontFamily: 'Poppins');
const KH11 = TextStyle(
  fontSize: 14,
  fontFamily: 'Poppins',
  color: TextColor,
  fontWeight: FontWeight.w400,
);
var KH12 = TextStyle(
  fontSize: 14,
  fontFamily: 'Poppins',
  color: blue1.withOpacity(1),
  fontWeight: FontWeight.w500,
);
var KH29 = TextStyle(
  fontSize: 19,
  fontFamily: 'Poppins',
  color: blue1.withOpacity(1),
  fontWeight: FontWeight.w500,
);
final KH13 = TextStyle(
  fontSize: 14,
  fontFamily: 'Poppins',
  color: white.withOpacity(1),
  fontWeight: FontWeight.w600,
);
final KH30 = TextStyle(
  fontSize: 21,
  fontFamily: 'Poppins',
  color: white.withOpacity(1),
  fontWeight: FontWeight.w600,
);
final Kh14 = TextStyle(
  fontSize: 14,
  fontFamily: 'Poppins',
  color: Color(0xffCF509B),
  fontWeight: FontWeight.w600,
);
final Kh31 = TextStyle(
  fontSize: 19,
  fontFamily: 'Poppins',
  color: Color(0xffCF509B),
  fontWeight: FontWeight.w600,
);
const KH32 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Color(0xff233862),
    fontFamily: 'Poppins');
final kh15 = TextStyle(
  fontSize: 15,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);
final kh17 = TextStyle(
  fontSize: 16,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);
final kh18 = TextStyle(
  fontSize: 13,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);
final kh19 = TextStyle(
  fontSize: 18,
  fontFamily: 'Poppins',
);
final kh20 = TextStyle(
  fontSize: 14,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
);
final kh21 = TextStyle(
  fontSize: 20,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
);
final kh22 = TextStyle(
  fontSize: 16,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
);
final kh23 = TextStyle(
  fontSize: 16,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);
final kh33 = TextStyle(
  fontSize: 21,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);
final kh25 = TextStyle(
  fontSize: 18,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);
final kh34 = TextStyle(
  fontSize: 22,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);
final kh = TextStyle(
  fontSize: 18,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);
final kh24 = TextStyle(
  fontSize: 20,
  color: Color(0xff2C3550),
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
);
const kh26 = TextStyle(
  fontSize: 14,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);
const kH16 =
    TextStyle(fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w400);

const textFieldTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'Poppins',
  color: textFieldTextColor,
  fontWeight: FontWeight.w500,
);
const kH35 =
    TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w600);

final textFieldHintStyle =
    textFieldTextStyle.copyWith(color: textFieldHintColor);
final textFieldReadOnlyStyle =
    textFieldTextStyle.copyWith(color: textFieldReadOnlyColor);
final textFieldLabelStyle = textFieldTextStyle.copyWith(fontSize: 14);
final textFieldErrorStyle =
    textFieldLabelStyle.copyWith(color: textFieldErrorColor);

InputDecoration getInputDecoration(String? labelText,
    {String? hintText, Widget? suffixIcon}) {
  InputDecoration inputDecorationTheme = InputDecoration(
    // hintText: hinttext,
    // helperStyle: hintstyle,
    errorStyle: textFieldErrorStyle,
    isDense: false,
    // contentPadding: EdgeInsets.only(bottom: bv! * 1.5,top: bv! * 1.5, left: bv! * 1.5, right: bv! * 1.5),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
    enabledBorder: OutlineInputBorder(
      borderSide: new BorderSide(color: cf.black.withOpacity(.5)),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: new BorderSide(color: cf.black.withOpacity(.5)),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    border: OutlineInputBorder(
      borderSide: new BorderSide(color: cf.black.withOpacity(.5)),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),

    labelText: labelText,
    labelStyle: textFieldLabelStyle,
    hintStyle: textFieldHintStyle,
    hintText: hintText,
    suffixIcon: suffixIcon,
  );

  return inputDecorationTheme;
}

class DTRFThemes {
  void init(BuildContext context) async {
    SizeConfig().init(context);
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    bv = SizeConfig.safeBlockVertical;
    bh = SizeConfig.safeBlockHorizontal;
  }

  TextStyle largeHeaderText = TextStyle(
      // Regular 30dp
      fontSize: bv! * 3.0,
      color: cf.black,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle largeHeaderTextWhite = TextStyle(
      // Regular 30dp
      fontSize: bv! * 3.0,
      color: cf.white,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);

  TextStyle xlargeHeaderText = TextStyle(
      // Regular 60dp
      fontSize: bv! * 4.5,
      color: cf.black,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300);
  TextStyle labelTextWhite = TextStyle(
      // Regular 16dp
      fontSize: bv! * 2.1,
      color: cf.white,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle labelTextWhiteBold = TextStyle(
      // Regular 16dp
      fontSize: bv! * 2.1,
      color: cf.white,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800);
  TextStyle headerTextWhiteBold = TextStyle(
      // Regular 16dp
      fontSize: bv! * 2.5,
      color: cf.white,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800);
  TextStyle btnTextWhiteBold = TextStyle(
      fontSize: bv! * 2.5,
      color: cf.white,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);
  TextStyle titleTextBlackBold = TextStyle(
      fontSize: bv! * 2.5,
      color: cf.black,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);
  TextStyle titleTextPrimaryBold = TextStyle(
      fontSize: bv! * 2.5,
      color: cf.primaryDark,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);
  TextStyle titleTextPrimary = TextStyle(
      fontSize: bv! * 2.5,
      color: cf.primaryDark,
      fontFamily: fontFamily,
      fontWeight: FontWeight.normal);
  TextStyle labelTextBlack = TextStyle(
      fontSize: bv! * 2.0,
      color: cf.black,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle labelTextBlackTab = TextStyle(
      fontSize: bv! * 3.0,
      color: cf.black,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);

  TextStyle labelTextComp1 = TextStyle(
      fontSize: bv! * 2.0,
      color: cf.compBlack,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);
  TextStyle labelTextGrey = TextStyle(
      fontSize: bv! * 1.8,
      color: cf.compDarkGrey,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle labelTextGreyTab = TextStyle(
      fontSize: bv! * 2,
      color: cf.compDarkGrey,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle labelTextPrimary = TextStyle(
      fontSize: bv! * 1.8,
      color: cf.primaryDark,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle labelTextRed = TextStyle(
      fontSize: bv! * 2.0,
      color: cf.primaryRed,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);

  TextStyle detailTextGrey = TextStyle(
      fontSize: bv! * 2,
      color: cf.compDarkGrey,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle detailTextWhite = TextStyle(
      fontSize: bv! * 1.8,
      color: cf.white,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle detailTextGreyBold = TextStyle(
      fontSize: bv! * 2.2,
      color: cf.compDarkGrey,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);
  TextStyle detailTextBlack = TextStyle(
      fontSize: bv! * 1.8,
      color: cf.black,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle detailTextPrimary = TextStyle(
      fontSize: bv! * 2,
      color: cf.primaryDark,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);

  TextStyle xsTextPrimary = TextStyle(
      fontSize: bv! * 1.5,
      color: cf.secondaryColor,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);

  TextStyle labelTextBlackBold = TextStyle(
      fontSize: bv! * 2.2,
      color: cf.black,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800);
  TextStyle labelTextBlackBoldForAddTimeSlot = TextStyle(
      fontSize: 18,
      color: cf.black,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600);

  TextStyle labelTextBlackBold2 = TextStyle(
      fontSize: bv! * 2.2,
      color: cf.compBlack,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800);
  TextStyle headerBoldText = TextStyle(
      fontSize: bv! * 2.5,
      color: cf.black,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);

  TextStyle headerPrimaryText = TextStyle(
      fontSize: bv! * 2.5,
      color: cf.primaryLight1,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);

  TextStyle btnTextWhite = TextStyle(
      fontSize: bv! * 2.3,
      color: cf.white,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);

  TextStyle btnTextBlack = TextStyle(
      fontSize: bv! * 2.3,
      color: cf.black,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle smallLabelWhite = TextStyle(
      fontSize: bv! * 1.5,
      color: cf.white,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle smallLabelGrey = TextStyle(
      fontSize: bv! * 1.8,
      color: cf.compGrey,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle xsmallLabelWhite = TextStyle(
      fontSize: bv! * 1,
      color: cf.white,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle smallLabelCompBlack = TextStyle(
      fontSize: bv! * 1.6,
      color: cf.compBlack,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);
  TextStyle appBarTitle = TextStyle(
      fontSize: 20,
      fontFamily: fontFamily,
      color: cf.textColor,
      fontWeight: FontWeight.w400);

  TextStyle headingTitle = TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: cf.textColor,
      fontWeight: FontWeight.w600);

  TextStyle headingTitleClickable = TextStyle(
      fontSize: 16,
      fontFamily: fontFamily,
      color: cf.textColorClickable,
      fontWeight: FontWeight.w500);

  TextStyle inputFieldText2 = TextStyle(
      fontSize: bv! * 2.4,
      color: cf.compDarkGrey,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w800);
  TextStyle inputFieldText3 = TextStyle(
      fontSize: bv! * 2,
      color: cf.compBlack,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600);
  TextStyle addTimeTextStyle = TextStyle(
      fontSize: 14,
      color: Color(0xff2C3550),
      fontFamily: "Poppins",
      fontWeight: FontWeight.w500);

  InputDecoration getInputDecorationWithDark(String labeltext, FocusNode fn) {
    InputDecoration InputDecorationTheme = InputDecoration(
      // hintText: hinttext,
      // helperStyle: hintstyle,
      errorStyle: descTextRed,
      isDense: true,
      contentPadding: EdgeInsets.only(bottom: bv! * 1.5, top: bv! * 1.5),
      enabledBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      border: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryLight4),
      ),
      labelText: labeltext,

      labelStyle: fn.hasFocus
          ? TextStyle(
              fontSize: 16,
              color: cf.primaryDark,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal)
          : TextStyle(
              fontSize: 16,
              color: cf.primaryDark,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal),
    );

    return InputDecorationTheme;
  }

  BoxDecoration timeSlotBoxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      border: Border.all(color: Color(0xffD0D5DD).withOpacity(1), width: 1.3));
  BoxDecoration timeSlotBoxDecoration1 = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color(0xffCF509B).withOpacity(1), width: 1.3));

  InputDecoration getInputDecorationWithDarkTab(
      String labeltext, FocusNode fn) {
    InputDecoration InputDecorationTheme = InputDecoration(
      // hintText: hinttext,
      // helperStyle: hintstyle,
      errorStyle: descTextRed,
      isDense: true,
      contentPadding: EdgeInsets.only(bottom: bv! * 1.5, top: bv! * 1.5),
      enabledBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      border: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryLight4),
      ),
      labelText: labeltext,

      labelStyle: fn.hasFocus
          ? TextStyle(
              fontSize: bv! * 2,
              color: cf.primaryDark,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal)
          : TextStyle(
              fontSize: bv! * 2.3,
              color: cf.primaryDark,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal),
    );

    return InputDecorationTheme;
  }

  BoxDecoration KBorderButtonDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(color: Color(0XFFEDE8ED), offset: Offset(1, 6), blurRadius: 22)
    ],
    color: Colors.white,
    border: Border.all(color: cf.primaryDark, width: 0.6),
    borderRadius: BorderRadius.all(Radius.circular(34)),
  );


  BoxDecoration nav_container = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Color(0xFF7A2F9C).withOpacity(0.2),
          blurRadius: 6.0, // soften the shadow
          spreadRadius: 2.0, //extend the shadow
          offset: Offset(
            0.0, // Move to right 10  horizontally
            4, // Move to bottom 10 Vertically
          ),
        )
      ],
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.10,
            1
          ],
          colors: [
            cf.bg2,
            cf.bg1,
          ]));

  BoxDecoration Carosual_dec = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(14),
    boxShadow: [
      // BoxShadow(
      //     color: Color.fromRGBO(236, 232, 236, 1),
      //     offset: Offset(1, 6),
      //     blurRadius: 22)
      BoxShadow(
        color: Color(0xFF000000).withOpacity(0.09),
        blurRadius: 10.0, // soften the shadow
        spreadRadius: 0.0, //extend the shadow
        offset: Offset(1, 4),
      )
    ],
  );

  BoxDecoration primaryBG = BoxDecoration(
      borderRadius: BorderRadius.circular(11),
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.15, 1],
          colors: [cf.primaryDark, cf.primaryLight1]));

  BoxDecoration newBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      // BoxShadow(
      //     color: Color.fromRGBO(236, 232, 236, 1),
      //     offset: Offset(1, 6),
      //     blurRadius: 22)
      BoxShadow(
        color: Color(0xFF000000).withOpacity(0.09),
        blurRadius: 12.0, // soften the shadow
        spreadRadius: 0.0, //extend the shadow
        offset: Offset(
          0.0, // Move to right 10  horizontally
          4, // Move to bottom 10 Vertically
        ),
      )
    ],
  );

  BoxDecoration newBoxDecorationSecond = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      // BoxShadow(
      //     color: Color.fromRGBO(236, 232, 236, 1),
      //     offset: Offset(1, 6),
      //     blurRadius: 22)
      BoxShadow(
        color: Color(0xFF000000).withOpacity(0.15),
        blurRadius: 20.0, // soften the shadow
        spreadRadius: 2.0, //extend the shadow
        offset: Offset(
          2.0, // Move to right 10  horizontally
          2, // Move to bottom 10 Vertically
        ),
      )
    ],
  );

  BoxDecoration docBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        stops: [0.15, 1],
        colors: [cf.primaryDark, cf.primaryLight1]),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(236, 232, 236, 1),
          offset: Offset(1, 6),
          blurRadius: 22)
    ],
  );

  BoxDecoration docBoxDecoration2 = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(14),
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.15, 1],
        colors: [cf.primaryBG3, cf.primaryBG3]),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          offset: Offset(1, 2),
          blurRadius: 10)
    ],
  );

  BoxDecoration selectedBoxDecoration2 = BoxDecoration(
    color: cf.primaryDarkSecond,
    borderRadius: BorderRadius.circular(14),
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.15, 1],
        colors: [cf.primaryBG3, cf.primaryBG3]),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          offset: Offset(1, 2),
          blurRadius: 10)
    ],
  );

  BoxDecoration buttonDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(26),
    gradient: new LinearGradient(
      colors: [cf.secondaryLight1, cf.secondaryDark],
      begin: FractionalOffset.centerLeft,
      end: FractionalOffset.centerRight,
    ),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(236, 232, 236, 1),
          offset: Offset(1, 6),
          blurRadius: 22)
    ],
  );

  BoxDecoration nextBtn = BoxDecoration(
    borderRadius: BorderRadius.circular(bv! * 33),
    gradient: new LinearGradient(
      colors: [cf.secondaryLight1, cf.secondaryDark],
      begin: FractionalOffset.centerLeft,
      end: FractionalOffset.centerRight,
    ),
  );
  BoxDecoration secendoryBG = BoxDecoration(
    shape: BoxShape.circle,
    gradient: new LinearGradient(
      colors: [cf.secondaryLight1, cf.primaryLight1],
      begin: FractionalOffset.centerLeft,
      end: FractionalOffset.centerRight,
    ),
  );

  BoxDecoration secendoryBG2 = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    gradient: new LinearGradient(
      colors: [cf.primaryDark, cf.primaryDark],
      begin: FractionalOffset.centerLeft,
      end: FractionalOffset.centerRight,
    ),
  );

  BoxDecoration newDarkColorBg = BoxDecoration(
      border: Border.all(color: cf.TextColorSecond),
      borderRadius: BorderRadius.all(Radius.circular(27)));
  BoxDecoration prevBtn = BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.15, 1],
          colors: [cf.compGreyLight1, cf.compGrey]));

  TextStyle descTextRed = TextStyle(
      fontSize: bv! * 2.0,
      height: 1.5,
      fontFamily: fontFamily,
      color: cf.primaryRed,
      fontWeight: FontWeight.normal);

  InputDecoration getSearchInputDecoration(String labeltext, FocusNode fn) {
    InputDecoration InputDecorationTheme = InputDecoration(
      hintText: labeltext,
      helperStyle: TextStyle(
          fontSize: bv! * 2.0,
          color: cf.compDarkGrey,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal),
      errorStyle: descTextRed,
      isDense: true,
      enabledBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      border: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryLight4),
      ),
      labelText: labeltext,
      labelStyle: fn.hasFocus
          ? TextStyle(
              fontSize: bv! * 2.5,
              color: cf.primaryLight1,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal)
          : TextStyle(
              fontSize: bv! * 2.0,
              color: cf.primaryLight1,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal),
      suffixIcon: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Icon(
          Icons.arrow_drop_down_outlined,
          color: cf.primaryLight1,
          size: bv! * 3.5,
        ),
      ),
    );

    return InputDecorationTheme;
  }

  InputDecoration getInputDecoration(String labeltext, FocusNode fn) {
    InputDecoration InputDecorationTheme = InputDecoration(
      // hintText: hinttext,
      // helperStyle: hintstyle,
      errorStyle: descTextRed,
      isDense: true,
      contentPadding: EdgeInsets.only(bottom: bv! * 1.5, top: bv! * 1.5),
      enabledBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      border: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryLight4),
      ),

      labelText: labeltext,

      labelStyle: fn.hasFocus
          ? TextStyle(
              fontSize: 18,
              color: cf.primaryLight1,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal)
          : TextStyle(
              fontSize: 18,
              color: cf.primaryLight1,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal),
    );

    return InputDecorationTheme;
  }

  InputDecoration getInputDecorationNew(String labeltext, FocusNode fn) {
    InputDecoration InputDecorationTheme = InputDecoration(
      // hintText: hinttext,
      // helperStyle: hintstyle,
      errorStyle: descTextRed,
      isDense: true,
      // contentPadding: EdgeInsets.only(bottom: bv! * 1.5,top: bv! * 1.5, left: bv! * 1.5, right: bv! * 1.5),
      contentPadding:
          const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
      enabledBorder: OutlineInputBorder(
        borderSide: new BorderSide(color: cf.black.withOpacity(.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: new BorderSide(color: cf.black.withOpacity(.5)),
      ),
      border: OutlineInputBorder(
        borderSide: new BorderSide(color: cf.black.withOpacity(.5)),
      ),

      labelText: labeltext,
      labelStyle: fn.hasFocus
          ? TextStyle(
              fontSize: 14,
              color: cf.black.withOpacity(.5),
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal)
          : TextStyle(
              fontSize: 14,
              color: cf.black.withOpacity(.5),
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal),
    );

    return InputDecorationTheme;
  }

  InputDecoration loginAndSignupFields(
    String labelText,
    String iconPath,
  ) {
    InputDecoration inputDecoration = InputDecoration(
      labelText: labelText,
      labelStyle: KH10,
      icon: SvgPicture.asset("$iconPath"),
      disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
      errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
      focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
    );

    return inputDecoration;
  }

  InputDecoration loginAndSignupFieldsTab(
    String labelText,
    String iconPath,
  ) {
    InputDecoration inputDecoration = InputDecoration(
      labelText: labelText,
      labelStyle: Kh28,
      icon: SvgPicture.asset("$iconPath"),
      disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
      errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
      focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: 2, color: blue.withOpacity(0.1))),
    );
    return inputDecoration;
  }

  InputDecoration getInputDecorationTab(String labeltext, FocusNode fn) {
    InputDecoration InputDecorationTheme = InputDecoration(
      // hintText: hinttext,
      // helperStyle: hintstyle,
      errorStyle: descTextRed,
      isDense: true,
      contentPadding: EdgeInsets.only(bottom: bv! * 1.5, top: bv! * 1.5),
      enabledBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      border: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryLight4),
      ),

      labelText: labeltext,

      labelStyle: fn.hasFocus
          ? TextStyle(
              fontSize: bv! * 2.5,
              color: cf.primaryLight1,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal)
          : TextStyle(
              fontSize: bv! * 2.5,
              color: cf.primaryLight1,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal),
    );

    return InputDecorationTheme;
  }

  InputDecoration getInputDecorationFilter(String labeltext, FocusNode fn) {
    InputDecoration InputDecorationTheme = InputDecoration(
        // hintText: hinttext,
        // helperStyle: hintstyle,
        errorStyle: descTextRed,
        isDense: true,
        contentPadding: EdgeInsets.only(bottom: bv! * 1.5, top: bv! * 1.5),
        enabledBorder: UnderlineInputBorder(
          borderSide: new BorderSide(color: cf.textColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: new BorderSide(color: cf.textColor),
        ),
        border: UnderlineInputBorder(
          borderSide: new BorderSide(color: cf.textColor),
        ),
        labelText: labeltext,
        labelStyle: fn.hasFocus
            ? TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              )
            : TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ));

    return InputDecorationTheme;
  }

  InputDecoration bottomSheetTextFieldStyle(String labeltext, FocusNode fn,
      {String? trailingIconPath}) {
    InputDecoration InputDecorationTheme = InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.all(11.0),
          child: SvgPicture.asset(
            "$trailingIconPath",
            color: Color(0xff667085),
          ),
        ),
        // hintText: hinttext,
        // helperStyle: hintstyle,
        errorStyle: descTextRed,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: new BorderSide(color: Color(0xffD0D5DD).withOpacity(1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: new BorderSide(color: Color(0xffD0D5DD).withOpacity(1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: new BorderSide(color: Color(0xffD0D5DD).withOpacity(1)),
        ),
        hintText: labeltext,
        hintStyle: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          color: Color(0xff2C3550).withOpacity(0.5),
          fontSize: 16,
        )
        //  labelText: labeltext,
        /*   labelStyle: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          color: Color(0xff2C3550).withOpacity(0.5),
          fontSize: 16,
        )*/
        );

    return InputDecorationTheme;
  }

  InputDecoration getInputDecorationWithPostIcon(
      String hinttext, TextStyle hintstyle, String img) {
    InputDecoration InputDecorationTheme = InputDecoration(
      hintText: hinttext,
      helperStyle: hintstyle,
      labelText: hinttext,
      labelStyle: hintstyle,
      errorStyle: descTextRed,
      suffixIcon: img == ""
          ? null
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                img,
                width: 1.5,
                height: 1.5,
                color: cf.textColor,
              ),
            ),
      /*contentPadding: (Platform.isIOS ? EdgeInsets.only(
          bottom: (10), left: 10) : EdgeInsets.only(bottom: 0.0, left: 10)),*/
      enabledBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.textColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.textColor),
      ),
      border: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.textColor),
      ),
    );

    return InputDecorationTheme;
  }

  InputDecoration getInputDecorationWithPostIconTab(
      String hinttext, TextStyle hintstyle, String img, FocusNode fn) {
    InputDecoration InputDecorationTheme = InputDecoration(
      hintText: hinttext,
      helperStyle: hintstyle,
      labelText: hinttext,
      labelStyle: fn.hasFocus
          ? TextStyle(
              fontSize: bv! * 2,
              color: cf.primaryDark,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal)
          : TextStyle(
              fontSize: bv! * 2.3,
              color: cf.primaryDark,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal),
      errorStyle: descTextRed,
      suffixIcon: img == ""
          ? null
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                img,
                width: bv! * 2.6,
                height: bv! * 2.6,
                color: cf.primaryDark,
              ),
            ),
      /*contentPadding: (Platform.isIOS ? EdgeInsets.only(
          bottom: (10), left: 10) : EdgeInsets.only(bottom: 0.0, left: 10)),*/
      enabledBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      border: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryLight4),
      ),
    );

    return InputDecorationTheme;
  }

  InputDecoration getInputDecorationWithPosticon(
      String hinttext, TextStyle hintstyle) {
    InputDecoration InputDecorationTheme = InputDecoration(
      hintText: hinttext,
      helperStyle: hintstyle.copyWith(fontSize: 11),
      errorStyle: descTextRed,
      labelStyle: hintstyle.copyWith(fontSize: 11),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.access_time_outlined,
          size: bv! * 3,
          color: cf.primaryDark,
        ),
      ),
      border: InputBorder.none,
    );
    return InputDecorationTheme;
  }

  InputDecoration getInputDecorationLargeBox(String labeltext, FocusNode fn) {
    InputDecoration InputDecorationTheme = InputDecoration(
      errorStyle: descTextRed,
      labelText: labeltext,
      labelStyle: fn.hasFocus
          ? TextStyle(
              fontSize: bv! * 2.5,
              color: cf.primaryDark,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal)
          : TextStyle(
              fontSize: bv! * 2.0,
              color: cf.compDarkGrey,
              fontFamily: fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal),
      isDense: true,
      enabledBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryDark),
      ),
      border: UnderlineInputBorder(
        borderSide: new BorderSide(color: cf.primaryLight4),
      ),
    );

    return InputDecorationTheme;
  }

  // Shivam Part

  TextStyle inputFieldText = TextStyle(
      fontSize: bv! * 2.8,
      color: cf.compBlack,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);

  TextStyle largeHeaderBoldText = TextStyle(
      // Regular 30dp
      fontSize: bv! * 2.8,
      color: cf.black,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);

  TextStyle hintTextGrey = TextStyle(
      fontSize: bv! * 2.0,
      color: cf.compDarkGrey,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500);

  TextStyle hintTextfocus = TextStyle(
      fontSize: bv! * 2.5,
      color: cf.primaryLight1,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500);

  TextStyle bigBtnTextWhite = TextStyle(
      fontSize: bv! * 2.8,
      color: cf.white,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);

  TextStyle smallTextPrimary = TextStyle(
      fontSize: bv! * 2.0,
      color: cf.secondaryColor,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500);

  TextStyle smallTextPrimaryBold = TextStyle(
      fontSize: bv! * 2.5,
      color: cf.primaryDark,
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold);

  TextStyle xlargeHeaderTextWhite = TextStyle(
      // Regular 60dp
      fontSize: bv! * 7.5,
      color: cf.white,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400);

  TextStyle subHeaderText = TextStyle(
      // Regular 20dp
      fontSize: bv! * 1.5,
      color: cf.compDarkGrey,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300);
  TextStyle subHeaderTextbig = TextStyle(
      // Regular 20dp
      fontSize: bv! * 2.5,
      color: cf.compDarkGrey,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400);
  TextStyle subHeaderTextbigbold = TextStyle(
      // Regular 20dp
      fontSize: bv! * 2.5,
      color: cf.compDarkGrey,
      fontFamily: fontFamily,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);

  Container bgsetting = Container(
    height: bv! * 15,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/icons/png/setting_top.png",
        ),
        fit: BoxFit.fitWidth,
      ),
    ),
    child: null /* add child content here */,
  );

  Container bgMenu = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/icons/menu/background.png",
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: null /* add child content here */,
  );

  Container bgimagetop = Container(
    height: height - (bv! * 10.0),
    color: Colors.white,
    // decoration: BoxDecoration(
    //   image: DecorationImage(
    //     image: AssetImage(
    //       "assets/icons/top_bg.png",
    //     ),
    //     fit: BoxFit.fill,
    //   ),
    // ),
    /* add child content here */
  );

  Container bgHomeScreen = Container(
    height: 300,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/images/homescreen_bg_icon.png",
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: null /* add child content here */,
  );
  Container bgimagetop1 = Container(
    // height: height / 2.3,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/icons/top_bg.png",
        ),
        fit: BoxFit.contain,
      ),
    ),
    child: null /* add child content here */,
  );

  Container bgimagetopbg = Container(
    height: height / 3.5,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/icons/top_small.png",
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: null /* add child content here */,
  );

  InputDecoration getSearchInput({String? errText}) {
    InputDecoration InputDecorationTheme = InputDecoration(
      // hintText: hinttext,
      //   helperStyle: hintstyle,
      counterText: "",
      isDense: true,
      errorText: errText,
      errorStyle: descTextRed,
      // contentPadding: EdgeInsets.all(bv *2.0),// changed from to 3.2 by omkar
      enabledBorder: UnderlineInputBorder(
        // borderRadius: BorderRadius.all(const Radius.circular(5.0),),
        borderSide: BorderSide(color: cf.white, width: bv! * 0.35),
      ),
      focusedBorder: UnderlineInputBorder(
        // borderRadius: BorderRadius.all(const Radius.circular(5.0),),
        borderSide: BorderSide(color: cf.white, width: bv! * 0.35),
      ),
      border: UnderlineInputBorder(
        // borderRadius: BorderRadius.all(const Radius.circular(5.0),),
        borderSide: BorderSide(color: cf.white, width: bv! * 0.35),
      ),
      //
      // labelText: labeltext,
      // labelStyle: myFocusNode ?  hintTextfocus : hintstyle
    );

    return InputDecorationTheme;
  }

  InputDecoration getLoginInputDecoration(
      String labeltext, TextStyle hintstyle, bool myFocusNode,
      {String? errText}) {
    print(myFocusNode);
    InputDecoration InputDecorationTheme = InputDecoration(

        // hintText: hinttext,
        helperStyle: hintstyle,
        counterText: "",
        isDense: true,
        errorText: errText,
        errorStyle: descTextRed,
        // contentPadding: EdgeInsets.all(bv *2.0),// changed from to 3.2 by omkar
        enabledBorder: UnderlineInputBorder(
          // borderRadius: BorderRadius.all(const Radius.circular(5.0),),
          borderSide: BorderSide(color: cf.primaryBG2, width: bv! * 0.35),
        ),
        focusedBorder: UnderlineInputBorder(
          // borderRadius: BorderRadius.all(const Radius.circular(5.0),),
          borderSide: BorderSide(color: cf.primaryLight1, width: bv! * 0.35),
        ),
        border: UnderlineInputBorder(
          // borderRadius: BorderRadius.all(const Radius.circular(5.0),),
          borderSide: BorderSide(color: cf.primaryBG2, width: bv! * 0.35),
        ),
        labelText: labeltext,
        labelStyle: hintstyle);

    return InputDecorationTheme;
  }


}
