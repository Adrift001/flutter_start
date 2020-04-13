import 'package:flutter/material.dart';

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

  bool isFavorate = false;

  @override
  Widget build(BuildContext context) {
//    return RowDemo();
    return Stack(
      children: <Widget>[
        Image.asset("assets/images/chenyao.jpg"),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              color: Color.fromARGB(150, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "你好, 世界",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite, color: isFavorate ? Colors.red : Colors.white,),
                    onPressed: (){
                      setState(() {
                        isFavorate = !isFavorate;
                      });
                    },
                  )
                ],
              ),
            ))
      ],
    );
  }
}

class ButtonRowDemo extends StatelessWidget {
  const ButtonRowDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: RowDemo());
  }
}

class RowDemo extends StatelessWidget {
  const RowDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
//    return ExpandedDemo();
    return Stack(
      children: <Widget>[Image.asset("assets/images/avatar.jpg")],
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Container(
            width: 100,
            height: 60,
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            width: 120,
            height: 100,
            color: Colors.green,
          ),
        ),
        Container(
          width: 90,
          height: 80,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 120,
          color: Colors.orange,
        )
      ],
    );
  }
}
