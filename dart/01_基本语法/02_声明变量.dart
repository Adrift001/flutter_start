
main(List<String> args) {
  /// 明确类型
  String name = "Hello";

  /// 类型推导
  /// 类型推导的方式虽然没有明确指定类型,但是也是有类型的.
  var age = 20;

  final height = 1.88;
  const address = "北京市";
  ///final const区别
  ///const必须赋值常量值,编译期间有一个确定的值
  ///final可以通过计算/函数获取一个值,运行期间
  /// final用的更多
  final date1 = DateTime.now();

  const p1 = const Person("name");
  const p2 = const Person("name");
  print(p1 == p2); //true
}

class Person {
  final String name;

  const Person(this.name);
}