void main(List<String> args) {
  const person = Person(firstName: "Sulaiman", lastName: "Shirzay");
  print(person.fullName);
}

class Person {
  final String firstName;
  final String lastName;
  final String fullName;

  const Person({required this.firstName, required this.lastName})
    : fullName = "$firstName $lastName";
}
