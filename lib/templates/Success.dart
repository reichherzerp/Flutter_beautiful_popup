import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Common.dart';
import '../main.dart';

/// ![](https://raw.githubusercontent.com/jaweii/Flutter_beautiful_popup/master/img/bg/success.png)
class TemplateSuccess extends BeautifulPopupTemplate {
  final BeautifulPopup options;
  TemplateSuccess(this.options) : super(options);

  @override
  final illustrationPath = 'img/bg/success.png';
  @override
  Color get primaryColor => options.primaryColor ?? Color(0xff4ABDFE);
  @override
  final maxWidth = 600;
  @override
  final maxHeight = 837;
  @override
  final bodyMargin = 0;
  @override
  get layout {
    return [
      Positioned(
        child: background,
      ),
      Positioned(
        top: percentH(46),
        child: title,
      ),
      Positioned(
        top: percentH(46),
        left: percentW(12),
        right: percentW(12),
        height: percentH(actions == null ? 46 : 24),
        child: content,
      ),
      Positioned(
        bottom: percentH(5),
        left: percentW(10),
        right: percentW(10),
        height: percentH(actions == null ? 0 : 46),
        child: actions ?? Container(),
      ),
    ];
  }
}
