main(List<String> args) {
  // const p1 = Person("name");
  // const p2 = Person("name");

  // print(p1 == p2);

  final p1 = Person.withName("name");
  final p2 = Person.withName("name");
  print(p1 == p2);
}

// class Person {
//   final String name;
//   final int age = 0;

//   const Person(this.name);
// }

class Person {
  String name;
  String age;

  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _ageCache = {};
  factory Person.withName(String name) {
    if(_nameCache.containsKey(name)) {
      return _nameCache[name];
    } else {
      final p = Person(name, "default");
      _nameCache[name] = p;
      return p;
    }
  }

    factory Person.withAge(String age) {
    if(_nameCache.containsKey(age)) {
      return _nameCache[age];
    } else {
      final p = Person("name", age);
      _nameCache[age] = p;
      return p;
    }
  }

  Person(this.name, this.age);
}