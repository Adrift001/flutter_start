main(List<String> args) {
  Person.course = "哈行啊";
  Person.goto();
}

class Person {
  String name;
  static String course;
  static void goto() {
    print("object");
  }
}