import 'package:flutter/material.dart';
import 'package:flutter_skyway_example/Common/Common.dart';
import 'package:flutter_skyway_example/Page/ConnectPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var d = GetScreenObj(context);
    return Container(
      width: d.width,
      height: d.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/back.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: d.height - 150,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 80),
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(
                      begin: Alignment(-1, 0),
                      end: Alignment(1.0, 0),
                      colors: [hexColor('#AFA8FC'), hexColor('#DE6FFC')],
                    ),
                  ),
                  child: new FlatButton(
                    child: new Text("1V1匹配"),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new ConnectPage()));
                    },
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.white,
                  ),
                ),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(
                      begin: Alignment(-1, 0),
                      end: Alignment(1.0, 0),
                      colors: [hexColor('#EAD1B2'), hexColor('#FD8088')],
                    ),
                  ),
                  child: new FlatButton(
                    child: new Text("4人房匹配"),
                    textColor: Colors.white,
                    onPressed: () {},
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
