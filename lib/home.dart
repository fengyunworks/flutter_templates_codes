///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:FlutterViz_Flutter_Templates/Reg/RegisterScreen1.dart';
import 'package:FlutterViz_Flutter_Templates/Reg/RegisterScreen2.dart';
import 'package:FlutterViz_Flutter_Templates/Reg/RegisterScreen3.dart';
import 'package:FlutterViz_Flutter_Templates/Welcome/WelcomeScreen1.dart';
import 'package:FlutterViz_Flutter_Templates/Login/LoginScreen1.dart';
import 'package:FlutterViz_Flutter_Templates/Splash/SplashScreen1.dart';
import 'package:FlutterViz_Flutter_Templates/Home/home1.dart';
import 'package:FlutterViz_Flutter_Templates/Home/home2.dart';
import 'package:FlutterViz_Flutter_Templates/Home/home3.dart';
import 'package:FlutterViz_Flutter_Templates/Home/home4.dart';
import 'package:FlutterViz_Flutter_Templates/Home/home5.dart';

class Home extends StatelessWidget {
  final Map map;
  Home(this.map);


  @override
  Widget build(BuildContext context) {

    List<Widget> items = [];
    this.map["data"].forEach((value) {
      var p = new Padding(
          padding: EdgeInsets.all(16),
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  value["name"],
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Color(0xff000000),
                  ),
                ),
                Text("View All",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff3a57e8),
                    ))
              ]));

      items.add(p);
      List<Widget> gitems = [];
      value["template"].forEach((template) {

        var gitem = new Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  alignment: Alignment.center,

                  margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  padding: EdgeInsets.all(0),
                  width: 350,
                  height: 250,
                  child:
                  GestureDetector(
                      child: Image.memory(
                          Base64Decoder().convert(template["template_image"]), width: 350,height:250),
                      onTapUp: (TapUpDetails details) {
                        _gotopage(template["name"].toString().replaceAll("#", ""),context);
                      }),

                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Text(
                    template["name"],
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ));
        gitems.add(gitem);

      });
      var grid = new GridView(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.7,
          ),
          children: gitems);
      items.add(grid);
    });

    return Scaffold(
      backgroundColor: Color(0xfff2f3f4),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: items,
        ),
      ),
    );
  }

  void _gotopage(name,context) async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      if(name == "RegisterScreen1") {
        return new RegisterScreen1();
      }
      else if(name == "WelcomeScreen1") {
        return new WelcomeScreen1();
      }
      else if(name == "LoginScreen1") {
        return new RegisterScreen1();
      }
      else if(name == "HomeScreen1") {
        return new Home1();
      }
      else if(name == "HomeScreen2") {
        return new Home2();
      }
      else if(name == "HomeScreen3") {
        return new Home3();
      }
      else if(name == "HomeScreen4") {
        return new Home4();
      }else if(name == "HomeScreen5") {
        return new Home5();
      }
      else if(name == "SplashScreen1") {
        return new SplashScreen1();
      }
      else {
        return new Home(map);
      }

    }));

  }

}
