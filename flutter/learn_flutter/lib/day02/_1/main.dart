import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("商品列表"),),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        HomeBodyItem("Apple1", "Macbook Product1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        HomeBodyItem("Apple2", "Macbook Product2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
        HomeBodyItem("Apple3", "Macbook Product3", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
      ],
    );
  }
}

class HomeBodyItem extends StatelessWidget {

  final String title;
  final String desc;
  final String imageURL;

  HomeBodyItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 8,),
          Text(title, style: TextStyle(fontSize: 25, color: Colors.orange,)),
          SizedBox(height: 8,),
          Text(desc, style: TextStyle(fontSize: 20, color: Colors.green),) ,
          SizedBox(height: 8,),
          Image.network(imageURL)
        ],
      ),
    );
  }
}