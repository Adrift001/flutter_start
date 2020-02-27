main(List<String> args) {
  
  const p1 = Person("name");
  const p2 = Person("name");
  print(p1 == p2);
}

class Person {
  final String name;
  // final int age;

  const Person(this.name);
  // const Person.NameAge(this.name, this.age);

}