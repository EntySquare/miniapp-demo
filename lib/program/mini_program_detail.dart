import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiniProgramDetail extends StatefulWidget {
  const MiniProgramDetail({Key? key}) : super(key: key);

  @override
  _MiniProgramDetailState createState() => _MiniProgramDetailState();
}

class _MiniProgramDetailState extends State<MiniProgramDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('耐克',style: TextStyle(color:Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
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
              onPressed: () {}),
        ],
      ),
    );
  }
}