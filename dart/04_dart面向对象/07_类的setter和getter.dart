main(List<String> args) {
  final p1 = Person();
  p1.setName = "name";
  print(p1.getName);
}

class Person {
  String _name;
  set setName(String name) {
    this._name = name;
  }

  String get getName {
    return _name;
  }
}