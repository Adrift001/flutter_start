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
      child: ButtonDemo()
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text(
            "RaisedButton",
          ),
          color: Colors.white,
          textColor: Colors.green,
          onPressed: (){
            print("RaisedButton");
          },),
        FlatButton(
            onPressed: () {},
            child: Text("FlatButton")
        ),
        OutlineButton(
          child: Text("OutlineButton"),
          onPressed: (){

          }
        ),

        //自定义button, 文字, 图标, 背景, 圆角
        FlatButton(
          onPressed: (){},
          color: Colors.amberAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.favorite, color: Colors.red,),
              SizedBox(width: 8,),
              Text("喜欢")
            ],
          )
        )
      ],
    );
  }
}

class Rich_Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
//        text: "Hello world",
////        style: TextStyle(
////          color: Colors.red,
////          fontSize: 30
////        )
        children: [
          TextSpan(text: "Hello world\n", style: TextStyle(color: Colors.green)),
          TextSpan(text: "Hello world\n", style: TextStyle(color: Colors.blue)),
          WidgetSpan(child: Icon(Icons.favorite, color: Colors.red,)),
          TextSpan(text: "Hello world\n", style: TextStyle(color: Colors.red)),
        ]
    ));
  }
}


class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "刷ROM是很多朋友的美好回忆，\n当时网络上也能找到非常多的ROM包。\n相比之下，\niPhone用户可能没有体会过刷机的乐趣，\n不过国外大神团队居然成功的将安卓系统刷进了iPhone中，\n非常神奇！",
      textAlign: TextAlign.center,
      maxLines: 1,
      style: TextStyle(
        fontSize: 30,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}



