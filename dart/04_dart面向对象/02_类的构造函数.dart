main(List<String> args) {
  
  //创建person对象
  var p = new Person.withNameAgeHeight("name", 10, 1.88);
  print(p.toString());

  //object和dynamic区别
  //object调用方法时编译会报错

  //dynamic调用方式时,编译不报错,但是会存在安全隐患.
  dynamic obj = "tom"; //
  print(obj.substring(1));

  var p1 = Person.fromMap({"name": "你好,哈哈哈哈"});
  print(p1);
}

class Person {
  String name;
  int age;
  double height;
  Person(this.name, this.age);

  //命名构造函数
  Person.withNameAgeHeight(this.name, this.age, this.height);

  Person.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "name: $name, age: $age, height: $height";
  }
}