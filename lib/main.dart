import 'package:flutter/material.dart';
import 'package:kraken/kraken.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Kraken kraken = Kraken(bundleURL: 'http://kraken.oss-cn-hangzhou.aliyuncs.com/demo/guide-styles.js');
    // Kraken kraken = Kraken(background:Colors.white,bundlePath: 'assets/script/test.js');
    Kraken kraken = Kraken(background: Colors.white, bundlePath: 'assets/page/kraken_test.html');

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: kraken,
      ),
    );
  }
}
