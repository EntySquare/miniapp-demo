import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:miniapp_demo/render/ui/column.dart';
import 'package:miniapp_demo/render/ui/style.dart';
import 'package:xml/xml.dart';
import 'package:xml2json/xml2json.dart';

class Render{
  /*
    Widget is child
   */
  static Widget pageXml(String xml){
    final xml2Json = Xml2Json();
    xml2Json.parse(xml);
    var jsonDec = json.decode(xml2Json.toGData());
    if(jsonDec['html'] ==null){
      return Column();
    }
    if(jsonDec["html"]['body'] ==null){
      return Column();
    }
    return  ColumnUi.turnWidget(jsonDec["html"]['body'],StyleUi(""));
  }

}