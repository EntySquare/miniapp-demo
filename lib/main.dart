import 'package:flutter/material.dart';
import 'package:kraken/kraken.dart';
// import 'package:kraken_animation_player/kraken_animation_player.dart';

void main() {
  // KrakenAnimationPlayer.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Kraken kraken = Kraken(bundleURL: 'http://kraken.oss-cn-hangzhou.aliyuncs.com/demo/guide-styles.js');

    //js
    // Kraken kraken = Kraken(
    //   background: Colors.white,
    //   bundlePath: 'assets/script/kraken_animation_demo.js',
    // );

    //version 0.9.0
    // Kraken kraken = Kraken(background: Colors.white, bundlePath: 'assets/page/kraken_test.html');

    //version 0.10.0
    Kraken kraken = Kraken(background: Colors.white, bundle: KrakenBundle.fromUrl('assets://assets/page/kraken_test.html'));

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
