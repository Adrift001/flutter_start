main(List<String> args) {
  sayHello1("Hello");
  sayHello2("你好");
  sayHello3("name", age: 20);
}

//必选参数必须传
void sayHello1(String name) {
  print(name);
}

//只有可选参数才能有默认值
//可选参数,位置可选参数
//位置可选参数: [int age, double height]
//实参和形参根据位置匹配
void sayHello2(String name, [int age, double height]) {
  print("age is ${age}");
  print("height is ${height}");
}

//可选参数,命名可选参数
void sayHello3(String name, {int age = 10, double height = 1.88}) {
  print("age is ${age}");
  print("height is ${height}");
}

