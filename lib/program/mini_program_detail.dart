import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kraken/kraken.dart';
import 'package:kraken/widget.dart';

class MiniProgramDetail extends StatefulWidget {
  const MiniProgramDetail({Key? key}) : super(key: key);

  @override
  _MiniProgramDetailState createState() => _MiniProgramDetailState();
}

class _MiniProgramDetailState extends State<MiniProgramDetail> {
  Kraken kraken = Kraken(
      viewportHeight:
          (window.physicalSize.height / window.devicePixelRatio),
      background: Colors.black,
      bundle: KrakenBundle.fromUrl('assets://assets/script/test.js'));
      // bundlePath: 'assets/script/app.js');

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   appBar: AppBar(
    //     // title: Text('耐克',style: TextStyle(color:Colors.white),),
    //     centerTitle: true,
    //     backgroundColor: Colors.black,
    //     actions: [
    //       IconButton(
    //           iconSize: 19,
    //           padding: EdgeInsets.zero,
    //           splashRadius: 19,
    //           icon: Icon(
    //             Icons.more_horiz,
    //             color: Colors.white,
    //           ),
    //           tooltip: 'More',
    //           onPressed: () {}),
    //       IconButton(
    //           iconSize: 19,
    //           splashRadius: 19,
    //           padding: EdgeInsets.zero,
    //           icon: Icon(
    //             Icons.radio_button_checked,
    //             color: Colors.white,
    //           ),
    //           tooltip: 'More',
    //           onPressed: () {
    //             Navigator.pop(context);
    //           }),
    //     ],
    //   ),
    //   body: kraken
    // );

    return Material(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.none,
        children: [
          kraken,
          Positioned(
            top: 30,
            right: 10,
              child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      IconButton(
                          iconSize: 19,
                          padding: EdgeInsets.zero,
                          splashRadius: 19,
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                          tooltip: 'More',
                          onPressed: () {}),
                      IconButton(
                          iconSize: 19,
                          splashRadius: 19,
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.radio_button_checked,
                            color: Colors.white,
                          ),
                          tooltip: 'More',
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ],
                  ))),
        ],
      ),
    );
  }
}
