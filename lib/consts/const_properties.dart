import 'package:flutter/material.dart';

const commonBlueColor = Color(0xff2962ff);
const commonDisabledColor = Color(0xfffafafa);

final primaryBlueColor = Color(0xff2E65FF);
final primaryBlackColor = Color(0xff222222);
final primaryGreyColor = Color(0xffe2e2e2);

const _rNBlueColorValue = 0xff4872df;
final rNBlueColor = RNColor(_rNBlueColorValue, const <int, Color>{
  900: Color(0xffe4e8f8),
  800: Color(0xff223782),
  700: Color(0xffe4e8f8),
  600: Color(_rNBlueColorValue),
  500: Color(0xff607ce1),
  400: Color(0xff889de8),
  300: Color(0xffafbdf0),
  200: Color(0xffe4e8f8),
  100: Color(0xfff5f8fc),
  000: Color(0xfff8fbff)
});

const _orangeColorValue = 0xffffdbbd;
final rNOrangeColor = RNColor(_orangeColorValue, const <int, Color>{
  000: Color(0xffFFF9F3),
  100: Color(0xfffff4eb),
  200: Color(0xffffdbbd),
  300: Color(0xffffa65a),
  400: Color(0xffff9943),
  500: Color(_orangeColorValue),
  600: Color(0xffc25700),
  700: Color(0xff994601),
  800: Color(0xff672f00),
  900: Color(0xff331800),
});

const _yellowColorValue = 0xffeaac30;
final rNYellowColor = RNColor(_yellowColorValue, const <int, Color>{
  000: Color(0xfffffbf3),
  100: Color(0xfffff8e9),
  200: Color(0xffffe6b0),
  300: Color(0xffffdf9a),
  400: Color(0xfffdcc61),
  500: Color(_yellowColorValue),
  600: Color(0xff946300),
  700: Color(0xff59441c),
  800: Color(0xff534018),
  900: Color(0xff2f230d),
});

const _greenColorValue = 0xff16bb0a;
final rNGreenColor = RNColor(_greenColorValue, const <int, Color>{
  000: Color(0xfff3fbec),
  100: Color(0xffeaf9de),
  200: Color(0xffa5f787),
  300: Color(0xffa5f787),
  400: Color(0xff7df75a),
  500: Color(_greenColorValue),
  600: Color(0xff018a01),
  700: Color(0xff087306),
  800: Color(0xff075409),
  900: Color(0xff042903),
});

const _lightGreenColorValue = 0xff16bb0a;
final rNLightGreenColor = RNColor(_lightGreenColorValue, const <int, Color>{
  000: Color(0xfff8fcef),
  100: Color(0xfff4fae7),
  200: Color(0xffe9f5ce),
  300: Color(0xffd3eb9e),
  400: Color(0xffbde26d),
  500: Color(_lightGreenColorValue),
  600: Color(0xff90ce0e),
  700: Color(0xff669008),
  800: Color(0xff3a5206),
  900: Color(0xff1d2900),
});

const _rNTealColorValue = 0xff02cfbb;
final rNTealColor = RNColor(_rNTealColorValue, const <int, Color>{
  000: Color(0xfff1fffc),
  100: Color(0xffe0fff8),
  200: Color(0xff9bfbef),
  300: Color(0xff6dfded),
  400: Color(0xff42f8e1),
  500: Color(_rNTealColorValue),
  600: Color(0xff00857a),
  700: Color(0xff007a70),
  800: Color(0xff005649),
  900: Color(0xff012e28),
});


const _rNPureGrayColorValue = 0xffaeaeae;
final rNPureGrayColor =  RNColor(_rNPureGrayColorValue, const <int, Color>{
  000: Color(0xffffffff),
  100: Color(0xfff6f5f6),
  200: Color(0xff242424),
  300: Color(0xffdadada),
  400: Color(0xffc5c5c5),
  500: Color(_rNPureGrayColorValue),
  600: Color(0xff808080),
  700: Color(0xff5c5c5c),
  800: Color(0xff303030),
  900: Color(0xff191919),
});

const _rNCoolGrayColorValue = 0xff627091;
final rNCoolGrayColor = RNColor(_rNCoolGrayColorValue, const <int ,Color >{
  000 : Color(0xfffcfcfc),
  100 : Color(0xfff7f7fc),
  200 : Color(0xffeff0f6),
  300 : Color(0xffd9dbe9),
  400 : Color(0xffa0a3bd),
  500 : Color(0xff6e7091),
  600 : Color(0xff4e4b66),
  700 : Color(0xff272338),
  800 : Color(0xff14142b),
  900 : Color(0xff0d0c1a),
});

class RNColor extends ColorSwatch<int> {
  RNColor(int primary, Map<int, Color> swatch) : super(primary, swatch);
}


final rNGrayscale = Grayscale(
    <String, Color?>{
      'midnight' : rNCoolGrayColor[800],
      'offBlack' : rNCoolGrayColor[900],
      'ash' : rNCoolGrayColor[700],
      'body' : rNCoolGrayColor[600],
      'label' : rNCoolGrayColor[500],
      'placeholder' : rNCoolGrayColor[400],
      'line' : rNCoolGrayColor[300],
      'input' : rNCoolGrayColor[200],
      'bg' : rNCoolGrayColor[100],
      'offWhite' : rNCoolGrayColor[000],
      'pureWhite' : rNPureGrayColor[000],
    }
);

class Grayscale{
  final Map<String, Color?> colorItem;

  Grayscale(this.colorItem);

}
