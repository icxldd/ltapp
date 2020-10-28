import 'dart:core';
import 'package:dio/dio.dart';

class HTTP {
  static String url = "http://58.40.82.26:9603";
  static Dio dio = new Dio();
  static Options options = Options(
      contentType: Headers.jsonContentType, headers: {"authorization": ""});

  static Future<bool> login(String name, String pwd) async {
    var a = await dio
        .post(url + "/token",
            data: {
              "account": name,
              "password": pwd,
            },
            options: options)
        .then((x) async {
      try {
        var v1 = x.data["token"];
        var token = "Bearer " + v1;
        options.headers["authorization"] = token;
      } catch (e) {
        return false;
      }
      return true;
    }).catchError((onError) {
      print('123123');
      return false;
    });
    return a;
  }
}
