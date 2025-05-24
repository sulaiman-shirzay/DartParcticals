void main(List<String> args) {
  const principal = Principal();
  print(principal.positions);
}

enum Positions { principal, headMaster, teacher }

class Person {
  final Positions positions;

  const Person({required this.positions});
}

class Principal extends Person {
  const Principal() : super(positions: Positions.principal);
}
