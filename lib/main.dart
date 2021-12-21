import 'package:kraken/widget.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kraken/kraken.dart';

import 'kraken_custom_widget.dart';
// import 'package:kraken_animation_player/kraken_animation_player.dart';

void main() {
  // KrakenAnimationPlayer.initialize();
  defineKrakenCustomElements();
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
    // Kraken kraken = Kraken(background: Colors.white, bundle: KrakenBundle.fromUrl('assets://assets/page/kraken_test.html'));
    Kraken kraken = Kraken(background: Colors.white, bundle: KrakenBundle.fromUrl('assets://assets/script/test.js'));

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: kraken,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          child: Icon(
            Icons.camera,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }


}
