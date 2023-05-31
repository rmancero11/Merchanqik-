import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:merchan/config/config.dart';
import 'package:merchan/constants/constants.dart';
import 'package:merchan/domain/enums/ui.dart';

/// Buttom that receives
class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.label,
    this.callback,
    this.noBorder,
    this.noBorderRadius,
    this.textColor,
    this.backgroundColor,
    this.type = ButtonType.CONTAINED,
    this.loading = false,
    this.isDisabled = false,
  }) : super(key: key);

  final String label;
  final bool? noBorder;
  final bool? noBorderRadius;
  final ButtonType type;
  final Color? textColor;
  final VoidCallback? callback;
  final Color? backgroundColor;
  final bool loading;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    switch (type) {
      case ButtonType.TEXT:
        return _textButton(
            loading: loading,
            callback: callback,
            textColor: textColor,
            label: label,
            isDisabled: isDisabled,
            responsive: responsive);
      case ButtonType.OUTLINED:
        return _oulinedButton(
            loading: loading,
            callback: callback,
            textColor: textColor,
            backgroundColor: backgroundColor,
            label: label,
            isDisabled: isDisabled,
            responsive: responsive);
      default:
        return _containedButton(
            loading: loading,
            callback: callback,
            textColor: textColor,
            backgroundColor: backgroundColor,
            label: label,
            noBorder: noBorder,
            noBorderRadius: noBorderRadius,
            isDisabled: isDisabled,
            responsive: responsive);
    }
  }
}

TextButton _textButton(
        {VoidCallback? callback,
        Color? textColor,
        required String label,
        required bool loading,
        required bool isDisabled,
        required Responsive responsive}) =>
    TextButton(
      onPressed: isDisabled ? null : callback,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.resolveWith(
            ((_) => const Size(double.infinity, 40))),
      ),
      child: loading
          ? loader(qLightBlueColor)
          : Text(
              label,
              style: TextStyle(
                color: textColor ?? qWhiteOpacity(),
                fontSize: responsive.heightPercent(fontSizeSM),
                fontWeight: FontWeight.normal,
              ),
            ),
    );

ElevatedButton _oulinedButton(
        {VoidCallback? callback,
        Color? textColor,
        Color? backgroundColor,
        required String label,
        required bool loading,
        required bool isDisabled,
        required Responsive responsive}) =>
    ElevatedButton(
      style: qOutlinedButtonStyle(backgroundColor: backgroundColor),
      onPressed: isDisabled ? null : callback,
      child: loading
          ? loader(qLightBlueColor)
          : Text(
              label,
              style: TextStyle(
                color: textColor ?? qLightBlueColor,
                fontSize: responsive.heightPercent(fontSizeSM),
              ),
            ),
    );

ElevatedButton _containedButton(
    {VoidCallback? callback,
    Color? textColor,
    Color? backgroundColor,
    bool? noBorder,
    bool? noBorderRadius,
    required String label,
    required bool loading,
    required bool isDisabled,
    required Responsive responsive}) {
  return ElevatedButton(
    style: qContainedButtonStyle(
        backgroundColor: backgroundColor,
        noBorder: noBorder,
        noBorderRadius: noBorderRadius,
        isDisabled: isDisabled),
    onPressed: isDisabled ? null : callback,
    child: loading
        ? loader(qWhite)
        : Text(
            label,
            style: TextStyle(
              color: isDisabled ? qDarkGray : textColor ?? qWhite,
              fontSize: responsive.heightPercent(fontSizeSM),
            ),
          ),
  );
}

SizedBox loader(Color color) => SizedBox(
      height: 30,
      child: LoadingIndicator(
        indicatorType: Indicator.ballPulse,
        colors: [color],
      ),
    );
