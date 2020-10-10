import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter_skyway_example/Common/Common.dart';
// import 'package:flutter_skyway_example/DataChace/User.dart';
import 'package:flutter_skyway_example/Model/ScreenInfo.dart';
// import 'package:flutter_skyway_example/Page/RoomPage.dart';
import 'package:web_socket_channel/io.dart';

import '../Common/Common.dart';

class ConnectPage extends StatefulWidget {
  @override
  _ConnectPageState createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  IOWebSocketChannel _channel;
  String _id;

  @override
  void initState() {
    super.initState();

    // _channel = IOWebSocketChannel.connect("ws://121.41.230.2:8181/");
    // _id = GetUUID();
    // QueueObj o = new QueueObj(_id, HeadIcon);
    // String loadData = jsonEncode(o);
    // _channel.sink.add(loadData); //上传队列排队

    // _channel.stream.listen((message) {
    //   Map data = jsonDecode(message);
    //   if (data['self']['id'] == _id || data['it']['id'] == _id) {
    //     _channel.sink.close();

    //     String selfImage, itImages;

    //     if (data['self']['id'] == _id) {
    //       selfImage = data['self']['url'];
    //       itImages = data['it']['url'];
    //     } else {
    //       itImages = data['self']['url'];
    //       selfImage = data['it']['url'];
    //     }
    //     roomInfo i = new roomInfo(data['roomcode'], selfImage, itImages);

    //     Navigator.push(
    //         context,
    //         new MaterialPageRoute(
    //             builder: (context) => new RoomPage(
    //                   Room: i,
    //                 )));
    //   }
    // });
  }

  String roomCode = '0';
  @override
  Widget build(BuildContext context) {
    var d = GetScreenObj(context);
    return Container(
      //margin: EdgeInsets.only(left: 15),
      width: d.width - 50,
      height: d.width - 50,
      child: Image.asset(
        'images/load.gif',
        width: d.width - 50,
        height: d.height - 50,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // _channel.sink.close();
  }
}
