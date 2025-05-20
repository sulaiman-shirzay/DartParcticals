void main(List<String> args) {
  final person = Person(20);
  print(person.age);
  const personSulaiman = Person.sulaiman(25);
  print(personSulaiman.age);
}

class Person {
  final int age;
  const Person(this.age);

  const Person.sulaiman(this.age);
}
