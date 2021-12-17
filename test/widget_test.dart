// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:miniapp_demo/main.dart';
import 'package:xml/xml.dart';
import 'package:xml2json/xml2json.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    print("run test1");
    var goodXmlString = await rootBundle.loadString('assets/page/test1.html');

    // Create a client transformer
    final myTransformer = Xml2Json();

    // Parse a simple XML string

    myTransformer.parse(goodXmlString);
    print('XML string');
    print(goodXmlString);
    print('');

    var json = myTransformer.toGData();
    print('GData');
    print('');
    print(json);
    print('');


    // json = myTransformer.toParkerWithAttrs(array: ['contact']);
    // print('ParkerWithAttrs, specify the node as an array');
    // print('');
    // print(json);
  });
}
