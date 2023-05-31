import 'package:flutter/material.dart';

import 'colors.dart';

// border width
const double qBorderWidth4 = 4.0;
// layout spacing
const double qLayoutSpacing8 = 8.0;
const double qLayoutSpacing16 = 16.0;
const double qLayoutSpacing24 = 24.0;

// Padding
const EdgeInsets qPaddingAll0 = EdgeInsets.all(0);
const EdgeInsets qPaddingAll10 = EdgeInsets.all(10);
const EdgeInsets qPaddingAll14 = EdgeInsets.all(14);
const EdgeInsets qPaddingAll16 = EdgeInsets.all(16);
const EdgeInsets qPaddingLand16 = EdgeInsets.symmetric(horizontal: 16);
const EdgeInsets qPaddingLand24 = EdgeInsets.symmetric(horizontal: 24);
const EdgeInsets qPaddingPort12 = EdgeInsets.symmetric(vertical: 12);
const EdgeInsets qPaddingPort24 = EdgeInsets.symmetric(vertical: 24);
EdgeInsets qPaddingSymmetric(double horizontal, double vertial) =>
    EdgeInsets.symmetric(horizontal: horizontal, vertical: vertial);
// only
EdgeInsets qPaddingOnly(
        {double left = 0,
        double top = 0,
        double right = 0,
        double bottom = 0}) =>
    EdgeInsets.only(left: left, top: top, right: right, bottom: bottom);

// Spacing
// Vertical
const SizedBox qSpaceV2 = SizedBox(height: 2);
const SizedBox qSpaceV4 = SizedBox(height: 4);
const SizedBox qSpaceV6 = SizedBox(height: 6);
const SizedBox qSpaceV8 = SizedBox(height: 8);
const SizedBox qSpaceV12 = SizedBox(height: 12);
const SizedBox qSpaceV14 = SizedBox(height: 14);
const SizedBox qSpaceV16 = SizedBox(height: 16);
const SizedBox qSpaceV24 = SizedBox(height: 24);
const SizedBox qSpaceV48 = SizedBox(height: 48);
//Horizontal
const SizedBox qSpaceH2 = SizedBox(width: 2);
const SizedBox qSpaceH4 = SizedBox(width: 4);
const SizedBox qSpaceH6 = SizedBox(width: 6);
const SizedBox qSpaceH8 = SizedBox(width: 8);
const SizedBox qSpaceH12 = SizedBox(width: 12);
const SizedBox qSpaceH24 = SizedBox(width: 24);
const SizedBox qSpaceH36 = SizedBox(width: 36);

// Border
// Radius
// no border radius
BorderRadius qBorderRadius0 = BorderRadius.circular(0.0);
BorderRadius qBorderRadius5 = BorderRadius.circular(5.0);
BorderRadius qBorderRadius10 = BorderRadius.circular(10.0);
BorderRadius qBorderRadius15 = BorderRadius.circular(15.0);
BorderRadius qBorderRadius20 = BorderRadius.circular(20.0);
Radius qRadius20 = const Radius.circular(20.0);
BorderRadius qCustomBorderRadius(
        {double? topLeft,
        double? topRight,
        double? bottomLeft,
        double? bottomRight}) =>
    BorderRadius.only(
      topLeft: topLeft != null ? Radius.circular(topLeft) : Radius.zero,
      topRight: topRight != null ? Radius.circular(topRight) : Radius.zero,
      bottomLeft:
          bottomLeft != null ? Radius.circular(bottomLeft) : Radius.zero,
      bottomRight:
          bottomRight != null ? Radius.circular(bottomRight) : Radius.zero,
    );
BorderRadius qCustomTopRadius(double radius) => BorderRadius.only(
    topLeft: Radius.circular(radius), topRight: Radius.circular(radius));
// Side
BorderSide qBorderSideLight({Color? borderColor, double? width}) {
  return BorderSide(color: borderColor ?? qLightBlueColor, width: width ?? 1);
}

// Buttons
ButtonStyle qOutlinedButtonStyle(
        {Color? backgroundColor, bool noBorder = false}) =>
    qGeneralButtonStyle(
        backgroundColor: backgroundColor ?? qTransparent, noBorder: noBorder);

ButtonStyle qContainedButtonStyle(
        {Color? backgroundColor,
        bool? noBorder,
        bool? noBorderRadius,
        bool isDisabled = false}) =>
    qGeneralButtonStyle(
        backgroundColor:
            isDisabled ? qikGray : backgroundColor ?? qLightBlueColor,
        noBorder: noBorder ?? false,
        noBorderRadius: noBorderRadius ?? false,
        isDisabled: isDisabled);

ButtonStyle qGeneralButtonStyle(
    {required Color backgroundColor,
    required bool noBorder,
    bool noBorderRadius = false,
    bool isDisabled = false}) {
  return ButtonStyle(
    elevation: MaterialStateProperty.resolveWith((_) => 0),
    backgroundColor: MaterialStateProperty.resolveWith((_) => backgroundColor),
    minimumSize: MaterialStateProperty.resolveWith(
        ((_) => const Size(double.infinity, 60))),
    side: MaterialStateProperty.resolveWith((_) => qBorderSideLight(
        borderColor: noBorder
            ? backgroundColor
            : isDisabled
                ? qDarkGray
                : qLightBlueColor)),
    shape: MaterialStateProperty.resolveWith((_) => RoundedRectangleBorder(
        borderRadius: noBorderRadius ? qBorderRadius0 : qBorderRadius10)),
  );
}

// Small buttons
ButtonStyle qOutlinedSmallButtonStyle(
        {Color? backgroundColor, bool noBorder = false}) =>
    qGeneralSmallButtonStyle(
        backgroundColor: backgroundColor ?? qTransparent, noBorder: noBorder);

ButtonStyle qContainedSmallButtonStyle(
        {Color? backgroundColor, bool? noBorder}) =>
    qGeneralSmallButtonStyle(
        backgroundColor: backgroundColor ?? qLightBlueColor,
        noBorder: noBorder ?? false);

ButtonStyle qGeneralSmallButtonStyle(
    {required Color backgroundColor, required bool noBorder}) {
  return ButtonStyle(
    padding: MaterialStateProperty.resolveWith((_) => qPaddingAll0),
    elevation: MaterialStateProperty.resolveWith((_) => 0),
    backgroundColor: MaterialStateProperty.resolveWith((_) => backgroundColor),
    side: MaterialStateProperty.resolveWith((_) => qBorderSideLight(
        borderColor: noBorder ? backgroundColor : qLightBlueColor)),
    shape: MaterialStateProperty.resolveWith(
        (_) => RoundedRectangleBorder(borderRadius: qBorderRadius10)),
  );
}
