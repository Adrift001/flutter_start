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
          title: Text("豆瓣"),
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
    return Center(
      child: StarRating(8),
    );
  }
}

class StarRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color normalColor;
  final Color selectedColor;

  final Widget normalImage;
  final Widget selectedImage;

  StarRating(this.rating, {this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.normalColor = const Color(0xffbbbbbb),
    this.selectedColor = Colors.red,
    Widget normalImage,
    Widget selectedImage
  }): normalImage = normalImage ?? Icon(Icons.star_border, color: normalColor, size: size),
  selectedImage = selectedImage ?? Icon(Icons.star, color: selectedColor, size: size);

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: buildNormalStar()),
        Row(mainAxisSize: MainAxisSize.min, children: buildSelectedStar())
      ],
    );
  }

  List<Widget> buildNormalStar() {
    return List.generate(widget.count, (index) {
      return widget.normalImage;
    });
  }

  List<Widget> buildSelectedStar() {
    List<Widget> stars = [];
    final star = widget.selectedImage;
    //满填充
    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating / oneValue).floor();
    for(var i = 0; i < entireCount; i++) {
      stars.add(star);
    }

    double left = (widget.rating % oneValue) / oneValue * widget.size;
    // 部分填充
    stars.add(ClipRect(
      clipper: StarClipper(left),
      child: star,
    ));
    return stars;
  }
}

class StarClipper extends CustomClipper<Rect> {

  final double width;
  StarClipper(this.width);
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(StarClipper oldClipper) {
    return oldClipper.width != width;
  }

}
