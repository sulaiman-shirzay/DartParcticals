void main(List<String> args) {
  var person = Person();
  person.age = 20;
  person.name = "ahmad";
  print(person.age);
  print(person.name);
}

class Person {
  late String _name;
  late int _age;
  String get name {
    return _name;
  }

  int get age => _age;

  set name(String value) => _name = value;
  set age(int value) {
    _age = value;
  }
}
