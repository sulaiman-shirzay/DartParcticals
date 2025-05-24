void main(List<String> args) {
  var person = Person();
  var age = person.age = 20;
  var name = person.name = "Ali";
  print("$name is $age");
}

class Person {
  late String name; //public prop: impliciti getter/setter
  late int age;
}
