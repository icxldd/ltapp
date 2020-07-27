import 'package:flutter/material.dart';
import 'package:flutter_skyway_example/Common/Common.dart';
import 'package:flutter_skyway_example/Common/md5Encrypt.dart';
import 'package:flutter_skyway_example/Model/ScreenInfo.dart';
import 'package:flutter_skyway_example/Services/HTTP.dart';
import 'package:flutter_skyway_example/View/SelectSex.dart';

import 'Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controllerPW =
      TextEditingController.fromValue(TextEditingValue(text: ''));
  TextEditingController _controllerName =
      TextEditingController.fromValue(TextEditingValue(text: ''));

  @override
  Widget build(BuildContext context) {
    ScreenInfo screenObj = GetScreenObj(context);
    double selfWidth = screenObj.width * 0.8;
    Color value = hexColor("#170844");

    var iconData = IconData(0xe61e, fontFamily: 'icxl');
    return Material(
        color: value,
        child: SafeArea(
            child: SizedBox.expand(
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset('images/logo.png', width: 93, height: 93),
                margin: EdgeInsets.only(top: 30, right: 10),
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.red))
              ),
              Container(
                  margin: EdgeInsets.all(50),
                  width: selfWidth,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _controllerName,
                        cursorColor: hexColor('#6d258d'),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: hexColor('#9c9fa9')),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            iconData,
                            color: hexColor('#848197'),
                            size: 17,
                          ),
                          hintText: "请输入手机号",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: hexColor('#AFB6B8')),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: hexColor('#332355')),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: hexColor('#332355')),
                          ),
                        ),
                      ),
                      TextField(
                        controller: _controllerPW,
                        obscureText: true,
                        cursorColor: hexColor('#6d258d'),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: hexColor('#9c9fa9')),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            IconData(0xe652, fontFamily: 'icxl'),
                            color: hexColor('#848197'),
                            size: 17,
                          ),
                          hintText: "请输入密码",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: hexColor('#AFB6B8')),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: hexColor('#332355')),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: hexColor('#332355')),
                          ),
                        ),
                      ),
                      Container(
                        width: selfWidth,
                        height: 40,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment(-1, 0),
                            end: Alignment(1.0, 0),
                            colors: [hexColor('#c327d2'), hexColor('#f90578')],
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            var name, pwd;
                            name = _controllerName.text;
                            pwd = Getmd5(_controllerPW.text);
                            HTTP.login(name, pwd).then((value) => {
                                  if (value)
                                    {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) => new Home()))
                                    }
                                  else
                                    {}
                                });
                          },
                          child: Text('登录'),
                        ),
                      ),
                      Container(
                        width: selfWidth,
                        height: 40,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment(-1, 0),
                            end: Alignment(1.0, 0),
                            colors: [hexColor('#c327d2'), hexColor('#f90578')],
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new SelectSex()));
                          },
                          child: Text('游客体验'),
                        ),
                      ),
                    ],
                  )),
              Container()
            ],
          ),
        )));
  }
}
