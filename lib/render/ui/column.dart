// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:miniapp_demo/render/ui/style.dart';

class ColumnUi {
  /*
    _json 渲染树
    style 样式向下继承
   */
  static Widget turnWidget(dynamic _json, StyleUi styleUi) {
    print("_json---------------");
    print(styleUi.style);
    print(_json);
    // var styleUi = StyleUi(style);
    List<Widget> wList = [];
    if (_json['div'] == null) {
      return Column();
    }
    for (var _div in _json['div']) {
      List<Widget> _divWidgets = [];

      if (_div['style'] != null) {
        styleUi = styleUi.updateStyleUi(_div['style'].toString());
      }
      //文本
      if (_div['\$t'] != null) {
        var style = styleUi.textStyleUi();
        wList.add(Text(_div['\$t'].toString(), style: style));
      }
      //文本
      if (_div['div'] != null) {
        _divWidgets.add(turnWidget(_div, styleUi));
      }
      wList.add(Column(children: _divWidgets));
    }
    return Column(children: wList);
  }
}
