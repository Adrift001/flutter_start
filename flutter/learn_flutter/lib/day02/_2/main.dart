import 'package:flutter/material.dart';

main () {
  runApp(MyApp());
}

//flutter: HomeBody init
//flutter: HomeBody createState
//flutter: _HomeBodyState init
//flutter: _HomeBodyState initState
//flutter: _HomeBodyState didChangeDependencies
//flutter: _HomeBodyState build
//flutter: HomeBody init
//flutter: _HomeBodyState didUpdateWidget
//flutter: _HomeBodyState build

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("计数器"),),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {

  HomeBody() {
    print("HomeBody init");
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("HomeBody createState");
    return _HomeBodyState();
  }
}

class _HomeBodyState extends State<HomeBody> {

  int number = 1;

  _HomeBodyState() {
    print("_HomeBodyState init");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("_HomeBodyState initState");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("_HomeBodyState build");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            RaisedButton(
              child: Text("+", style: TextStyle(fontSize: 20),),
              onPressed: (){
                setState(() {
                  number ++;
                });
            },),
            RaisedButton(
              child: Text("-", style: TextStyle(fontSize: 20),),
              onPressed: () {
                setState(() {
                  number --;
                });
            },)
          ],),
          Text("当前计数 $number")
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("_HomeBodyState didChangeDependencies");
  }

  @override
  void didUpdateWidget(HomeBody oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("_HomeBodyState didUpdateWidget");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("_HomeBodyState dispose");
  }
}

// stf //快捷键
// stl //快捷键