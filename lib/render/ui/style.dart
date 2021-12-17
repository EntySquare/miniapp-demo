// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:miniapp_demo/render/util/color.dart';

class StyleUi {
  String style = "";

  StyleUi(style);
  StyleUi updateStyleUi(newStyleStr){
    var styleArr = style.split(";");
    var newStyleArr = newStyleStr.split(";");
    styleArr.addAll(newStyleArr);
    var str="";
    for (var f in styleArr) {
      if(str == ''){
        str = f;
      }else {
        str = str+";"+f;
      }
    }
    return StyleUi(str);
  }
  //文本
  TextStyle textStyleUi() {
    print("style:::::$style");
    Color color = Colors.black;
    double fontSize = 14;

    var styleArr = style.split(";");
    for (var i in styleArr) {
      if(i == ""){
        continue;
      }
      var arr = i.split(":");
      var name = arr[0];
      var value = arr[1];

      if (name == "color") {
        color = dealFontColor(value);
      }
      if (name == "font-size") {
        fontSize =  double.parse(_removePx(value));
        print("fontSize:$fontSize");
      }
    }
    return TextStyle(color: color,fontSize:fontSize);
  }
}

String _removePx(String pxString) {
  if (pxString == null) {
    return "14";
  }
  if (pxString.endsWith('px')) {
    return pxString.replaceAll('px', '');
  }
  return pxString;
}
