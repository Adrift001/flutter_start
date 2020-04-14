
import 'dart:math';

import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        appBar: AppBar(
//          title: Text("首页"),
//        ),
        body: HomeBody(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {

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

  ScrollController controller = ScrollController(initialScrollOffset: 0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener((){
      print("监听到滚动...${controller.offset}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (notification) {

        if(notification is ScrollStartNotification) {
          print("开始滚动");
        }
        if(notification is ScrollUpdateNotification) {
          print("正在滚动");
          print(notification.metrics.pixels);
        }
        if(notification is ScrollEndNotification) {
          print("结束滚动");
        }
        return true;
      },
      child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.people),
          title: Text("联系人: ${index + 1}"),
        );
      },
      itemCount: 100,
      controller: controller,),
    );
  }
}

class GridViewDemo04 extends StatelessWidget {
  const GridViewDemo04({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Hello World"),
            background: Image.asset("assets/images/chenyao.jpg", fit: BoxFit.cover,),
          ),
        ),
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  color: Color.fromARGB(255, Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256)),
                );
              }, childCount: 9),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              leading: Icon(Icons.people),
              title: Text("联系人"),
            );
          }, childCount: 10),
        )
      ],
    );
  }
}

class GridViewDemo03 extends StatelessWidget {
  const GridViewDemo03({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Color.fromARGB(255, Random().nextInt(256),
              Random().nextInt(256), Random().nextInt(256)),
        );
      },
//      itemCount: 1,
    );
  }
}

class GridViewDemo02 extends StatelessWidget {
  const GridViewDemo02({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: GridView(
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
        children: List.generate(100, (index) {
          return Container(
            color: Color.fromARGB(255, Random().nextInt(256),
                Random().nextInt(256), Random().nextInt(256)),
          );
        }),
      ),
    );
  }
}

class GridViewDemo01 extends StatelessWidget {
  const GridViewDemo01({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: List.generate(100, (index) {
            return Container(
              color: Colors.red,
            );
          })),
    );
  }
}

class ListViewSeDemo extends StatelessWidget {
  const ListViewSeDemo({
    Key key,
  }) : super(key: key);

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
