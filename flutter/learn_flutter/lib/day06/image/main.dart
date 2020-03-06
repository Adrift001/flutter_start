import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(title: Text("首页"),),
        body: HomeBody(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

          },
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
  Widget build(BuildContext context) {
    return Center(
//      child: Image.network("https://images.unsplash.com/photo-1583422309790-44422d3e7715?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80")
      // 创建文件夹存储图片
      // 在pubspec.yaml 进行配置
      // 使用图片
//      child: Image(image: AssetImage("assets/images/avatar.jpg")),
    child: Image.asset("assets/images/avatar.jpg"),
    );
  }
}

class ImageDemo01 extends StatelessWidget {
  const ImageDemo01({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage("https://images.unsplash.com/photo-1583422309790-44422d3e7715?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=802&q=80"),
//        width: 200,
//        height: 200,
      fit: BoxFit.fitWidth,
      alignment: Alignment.center,
      color: Colors.red,
      colorBlendMode: BlendMode.darken,
    );
  }
}