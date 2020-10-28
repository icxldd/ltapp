import 'package:flutter/material.dart';
import 'package:flutter_skyway_example/Common/Common.dart';
import 'package:flutter_skyway_example/DataChace/User.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    var d = GetScreenObj(context);
    return Opacity(
        opacity: 0.8,
        child: Container(
          width: d.width,
          height: d.height,
          child: Column(
            children: <Widget>[
              Container(
                height: 255,
                //margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 35),
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(
                              Radius.circular(150),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(HeadIcon),
                              fit: BoxFit.cover,
                            ))),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'Icxl',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'ID:99999',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            margin: EdgeInsets.only(bottom: 10),
                          ),
                          Container(
                            child: Text(
                              '关注',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            margin: EdgeInsets.only(bottom: 10),
                          ),
                          Container(
                            child: Text('粉丝',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            margin: EdgeInsets.only(bottom: 10),
                          ),
                          Container(
                            child: Text('最近访客',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: d.height - 280 - 50 - 107,
                margin: EdgeInsets.only(top: 30),
                width: d.width * 0.8,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    'images/1.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '我的订单',
                                    style:
                                        TextStyle(color: hexColor('#999999')),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    'images/2_.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text('我的会员',
                                      style: TextStyle(
                                          color: hexColor('#999999'))),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 55),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    'images/3.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text('我的钱包',
                                      style: TextStyle(
                                          color: hexColor('#999999'))),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: double.infinity,
                      height: 2.0,
                      color: hexColor('#261d3c'),
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            width: 200,
                            child: Text(
                              '开启技能',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 140,
                            child: Text(
                              '认证技能接单啦',
                              style: TextStyle(
                                  color: hexColor('#888888'), fontSize: 20),
                            ),
                            alignment: Alignment.centerRight,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 5),
                            height: 25,
                            width: 25,
                            child: Image.asset('images/right.png'),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: hexColor('#261d3c'),
                                  width: 2,
                                  style: BorderStyle.solid))),
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            width: 200,
                            child: Text(
                              '我的等级',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 140,
                            child: Text(
                              'LV.2',
                              style: TextStyle(
                                  color: hexColor('#c131d7'), fontSize: 20),
                            ),
                            alignment: Alignment.centerRight,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 5),
                            height: 25,
                            width: 25,
                            child: Image.asset('images/right.png'),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: hexColor('#261d3c'),
                                  width: 2,
                                  style: BorderStyle.solid))),
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            width: 200,
                            child: Text(
                              '我的动态',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 140,
                            child: Text(
                              '0条',
                              style: TextStyle(
                                  color: hexColor('#888888'), fontSize: 20),
                            ),
                            alignment: Alignment.centerRight,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 5),
                            height: 25,
                            width: 25,
                            child: Image.asset('images/right.png'),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: hexColor('#261d3c'),
                                  width: 2,
                                  style: BorderStyle.solid))),
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            width: 200,
                            child: Text(
                              '每日签到',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: 140,
                            child: Text(
                              '免费签到领金币',
                              style: TextStyle(
                                  color: hexColor('#c131d7'), fontSize: 20),
                            ),
                            alignment: Alignment.centerRight,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8, left: 5),
                            height: 25,
                            width: 25,
                            child: Image.asset('images/right.png'),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: hexColor('#261d3c'),
                                  width: 2,
                                  style: BorderStyle.solid))),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: hexColor('#281f3e'),
                    borderRadius: new BorderRadius.circular((10.0))),
              )
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back.png"),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
