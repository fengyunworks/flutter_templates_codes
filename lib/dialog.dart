import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDialog extends Dialog {
  final String title;
  final String content;

  _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(seconds: 3), (t) {
      print("关闭");
      Navigator.pop(context);
      timer.cancel();
    });
  }

  MyDialog(this.title, this.content);

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Center(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: InkWell(
                          child: Text("点这里复制代码"),
                          onTap: () => Clipboard.setData(ClipboardData(text:this.content)),
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                        child: InkWell(
                          child: Icon(Icons.close),
                          onTap: () => Navigator.pop(context),
                        ),
                        alignment: Alignment.topRight,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child:  TextField(
                    controller: TextEditingController(text: content),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 200000,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                        BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                        BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                        BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      labelText: "Code",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      hintText: "Enter Text",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      filled: true,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                )
              ],
            ),
          )),
      type: MaterialType.transparency,
    );
  }
}