main(List<String> args) {
  var p = Person();
  p.name = "name";

  //级联运算符
  var p1 = Person()
  ..name="张三"
  ..eat()
  ..run();
}

class Person {
  String name;
  void run() {
    print("running");
  }

  void eat() {
    print("eatting");
  }
}