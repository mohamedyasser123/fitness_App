import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyleHelper {
  final BuildContext context;
  const TextStyleHelper._(this.context);

  static TextStyleHelper of(BuildContext context) => TextStyleHelper._(context);

  TextStyle getTextStyle({required double fontSize, FontWeight? fontWeight}) =>
      TextStyle(
        fontFamily: "Poppins", // Update to your font family
        fontSize: fontSize.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: Theme.of(context).textTheme.bodyLarge?.color, // Or custom color
        height: 1.5, // Default line height (can be overridden)
      );

  // H1 Styles
  TextStyle get h1Bold => getTextStyle(fontSize: 26, fontWeight: FontWeight.w700);
  TextStyle get h1SemiBold =>
      getTextStyle(fontSize: 26, fontWeight: FontWeight.w600);
  TextStyle get h1Medium =>
      getTextStyle(fontSize: 26, fontWeight: FontWeight.w500);
  TextStyle get h1Regular =>
      getTextStyle(fontSize: 26, fontWeight: FontWeight.w400);

  // H2 Styles
  TextStyle get h2Bold => getTextStyle(fontSize: 24, fontWeight: FontWeight.w700);
  TextStyle get h2SemiBold =>
      getTextStyle(fontSize: 24, fontWeight: FontWeight.w600);
  TextStyle get h2Medium =>
      getTextStyle(fontSize: 24, fontWeight: FontWeight.w500);
  TextStyle get h2Regular =>
      getTextStyle(fontSize: 24, fontWeight: FontWeight.w400);

  // H3 Styles
  TextStyle get h3Bold => getTextStyle(fontSize: 22, fontWeight: FontWeight.w700);
  TextStyle get h3SemiBold =>
      getTextStyle(fontSize: 22, fontWeight: FontWeight.w600);
  TextStyle get h3Medium =>
      getTextStyle(fontSize: 22, fontWeight: FontWeight.w500);
  TextStyle get h3Regular =>
      getTextStyle(fontSize: 22, fontWeight: FontWeight.w400);

  // H4 Styles
  TextStyle get h4Bold => getTextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  TextStyle get h4SemiBold =>
      getTextStyle(fontSize: 20, fontWeight: FontWeight.w600);
  TextStyle get h4Medium =>
      getTextStyle(fontSize: 20, fontWeight: FontWeight.w500);
  TextStyle get h4Regular =>
      getTextStyle(fontSize: 20, fontWeight: FontWeight.w400);

  // Subtitle/Text Styles
  TextStyle get subtitleBold =>
      getTextStyle(fontSize: 18, fontWeight: FontWeight.w700);
  TextStyle get subtitleSemiBold =>
      getTextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  TextStyle get subtitleMedium =>
      getTextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  TextStyle get subtitleRegular =>
      getTextStyle(fontSize: 18, fontWeight: FontWeight.w400);

  // Body/Text Styles
  TextStyle get bodyBold => getTextStyle(fontSize: 16, fontWeight: FontWeight.w700);
  TextStyle get bodySemiBold =>
      getTextStyle(fontSize: 16, fontWeight: FontWeight.w600);
  TextStyle get bodyMedium =>
      getTextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  TextStyle get bodyRegular =>
      getTextStyle(fontSize: 16, fontWeight: FontWeight.w400);

  // Caption/Small Text Styles
  TextStyle get captionBold =>
      getTextStyle(fontSize: 12, fontWeight: FontWeight.w700);
  TextStyle get captionSemiBold =>
      getTextStyle(fontSize: 12, fontWeight: FontWeight.w600);
  TextStyle get captionRegular =>
      getTextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  TextStyle get smallBold =>
      getTextStyle(fontSize: 10, fontWeight: FontWeight.w700);
  TextStyle get smallRegular =>
      getTextStyle(fontSize: 10, fontWeight: FontWeight.w400);
}
