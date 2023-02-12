import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Common.dart';
import '../main.dart';

/// ![](https://raw.githubusercontent.com/jaweii/Flutter_beautiful_popup/master/img/bg/rocekt_orange_2.png)
class TemplateOrangeRocket2 extends BeautifulPopupTemplate {
  final BeautifulPopup options;
  TemplateOrangeRocket2(this.options) : super(options);

  @override
  final illustrationPath = 'img/bg/rocket_orange_2.png';
  @override
  Color get primaryColor => options.primaryColor ?? Color(0xffff902b);
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
        top: percentH(42),
        width: percentW(54),
        height: percentH(0),
        child: title,
      ),
      Positioned(
        top: percentH(46),
        left: percentW(12),
        right: percentW(12),
        height: percentH(actions == null ? 46 : 0),
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
