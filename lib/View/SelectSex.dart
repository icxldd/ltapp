import 'package:flutter/material.dart';
import 'package:flutter_skyway_example/Common/Common.dart';
import 'package:flutter_skyway_example/DataChace/User.dart';
import 'package:flutter_skyway_example/View/Home.dart';

class SelectSex extends StatefulWidget {
  @override
  _SelectSexState createState() => _SelectSexState();
}

class _SelectSexState extends State<SelectSex> {
  @override
  Widget build(BuildContext context) {
    var d = GetScreenObj(context);
    return Container(
      width: d.width,
      height: d.height,
      color: hexColor("#170844"),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 150,
              height: 300,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/boy.png'))),
              child: FlatButton(
                onPressed: () {
                  SetSelfImage(0);
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Home()));
                },
                child: Text(''),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/gril.png'))),
              child: FlatButton(
                onPressed: () {
                  SetSelfImage(1);
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Home()));
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
