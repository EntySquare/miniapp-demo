import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniapp_demo/program/mini_program_detail.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1C1C1E),
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 65,
        title: Container(
          // color: Colors.transparent,
          padding: EdgeInsets.zero,
          margin: EdgeInsets.fromLTRB(5, 0, 12, 0),
          // color: Color(0xFF000000),
          height: 32,
          child: Hero(
              tag: "search",
              child: Material(
                  color: Colors.transparent,
                  child: TextField(
                    onChanged: (text) {},
                    controller: fieldText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    keyboardType: TextInputType.text,
                    minLines: 1,
                    decoration: InputDecoration(
                      hintText: "搜索",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 16,
                      ),
                      filled: true,
                      fillColor: Color(0xFF323236),
                      prefixIcon: IconButton(
                          iconSize: 20,
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: Icon(
                            Icons.zoom_in,
                            color: Colors.white.withOpacity(0.4),
                          ),
                          tooltip: 'More',
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MiniProgramDetail()));
                          }),
                      contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 30, right: 40),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25), //边角为30
                        ),
                      ),
                      suffixIcon: IconButton(
                          iconSize: 20,
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.white.withOpacity(0.4),
                          ),
                          tooltip: 'More',
                          onPressed: () {}),
                    ),
                    autofocus: true,
                  ))),
        ),
      ),
      body: Container(
        color: Color(0xFF1C1C1E),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.camera,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
