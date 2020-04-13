//import 'dart:html';

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

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
//    return ImageExtension();
//  return IconExtension();
//    return TextFieldDemo(usernameController: usernameController, passwordController: passwordController);
//    return Align(child: Icon(Icons.pets, size: 50,));
//    return PaddingDemo();
    return Container(
      color: Colors.red,
      child: Text("你好, 世界"),
    );
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            "你好, 世界",
            style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.red
            ),
          ),
          Text(
            "你好, 世界",
            style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.red
            ),
          ),
          Text(
            "你好, 世界",
            style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.red
            ),
          ),
          Text(
            "你好, 世界",
            style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.red
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({
    Key key,
    @required this.usernameController,
    @required this.passwordController,
  }) : super(key: key);

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
//        labelText: "用户名"
              icon: Icon(Icons.people),
              hintText: "输入用户名",
              border: OutlineInputBorder()
            ),
            onChanged: (text) {
              print(text);
            },
            onSubmitted: (value) {
              print("done");
            },
          ),
          SizedBox(height: 10,),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: "password",
              icon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 1)
            ),
            child: FlatButton(
              child: Text("登录",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green
                ),
              ),
              onPressed: (){
                final username = usernameController.text;
                final password = passwordController.text;
                print(username);
                print(password);
              },
            ),
          )
        ],
      ),
    );
  }
}

class IconExtension extends StatelessWidget {
  const IconExtension({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.pets, size: 300, color: Colors.brown,);
  }
}

class ImageExtension extends StatelessWidget {
  const ImageExtension({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ButtonTheme(
            child: FlatButton(
              padding: EdgeInsets.all(0),
              color: Colors.red,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, //取消默认间距
              child: Text("你好, 世界,哈哈哈"),
              onPressed: () {

              },
            ),
          ),
          FadeInImage(
            // 图片缓存
            image: NetworkImage(""),
            placeholder: AssetImage("assets/images/avatar.jpg"),
          )
        ],
      )
    );
  }
}