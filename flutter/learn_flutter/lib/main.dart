
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: HomeBody()
    );
  }
}

// 所有widget不能定义状态
// 通过实现一个类,来定义状态
class HomeBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return HomeBodyState();
  }
}

class HomeBodyState extends State<HomeBody> {

  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(value: _isChecked, onChanged: (checked){
                  setState(() {
                    _isChecked = checked;
                  });
              },),
              Text("同意协议")
            ],
          ),
        )
    );;
  }

}