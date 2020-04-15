import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:learn_flutter/day10/http_request.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: HomeBody(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    final dio = Dio();
//    dio.get("https://httpbin.org/get").then((res) {
//      print(res);
//    });
  
    HttpRequest.request("https://httpbin.org/get", params: {"name": "你好,世界"}).then((res){
      print(res);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("你好, 世界");
  }
}