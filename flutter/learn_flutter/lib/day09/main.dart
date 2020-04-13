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
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 1000,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.people),
            trailing: Icon(Icons.delete),
            title: Text("联系人: ${index + 1}"),
            subtitle: Text("电话: 12312312312"),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
          );
        });
  }
}

class ListViewDemo02 extends StatelessWidget {
  const ListViewDemo02({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10000,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.people),
            trailing: Icon(Icons.delete),
            title: Text("联系人: ${index + 1}"),
            subtitle: Text("电话: 12312312312"),
          );
        });
  }
}

class ListViewDemo01 extends StatelessWidget {
  const ListViewDemo01({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
//      scrollDirection: Axis.horizontal,
//      itemExtent: 100,
      children: List.generate(100, (index) {
        return ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.delete),
          title: Text("联系人: ${index + 1}"),
          subtitle: Text("电话: 12312312312"),
        );
      }),
    );
  }
}
