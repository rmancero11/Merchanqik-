import 'package:flutter/widgets.dart';

class Responsive {
  final double _width, _height, _paddingTop, _textScaleFactor;

  Responsive._(this._width, this._height, this._paddingTop,
      [this._textScaleFactor = 2]);

  factory Responsive.of(BuildContext context) {
    final dataSize = MediaQuery.of(context).size;
    final paddingTop = MediaQuery.of(context).padding.top;
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Responsive._(
        dataSize.width, dataSize.height, paddingTop, textScaleFactor);
  }

  double width() => _width;
  double height() => _height;
  double paddingTop() => _paddingTop;
  double widthPercent(double percent) => _width * percent / 100;
  double heightPercent(double percent) => _height * percent / 100;
  double noPaddingHeight() => _height - _paddingTop;

  double textScaleFactor(
    BuildContext context,
  ) =>
      _textScaleFactor;
}
