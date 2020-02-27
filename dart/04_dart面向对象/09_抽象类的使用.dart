main(List<String> args) {
  
}

abstract class Shape {
  double getArea();
  String getInfo() {
    return "形状";
  }
}

class Rectangle extends Shape {
  @override
  double getArea() {
    // TODO: implement getArea
    return null;
  }
  
}