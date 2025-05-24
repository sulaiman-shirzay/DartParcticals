import 'dart:math';

void main(List<String> args) {
  var circle = Circle.area(3);
  print(circle.radius); // This would now print the area as radius
}

class Circle {
  late double radius;

  Circle(this.radius);

  Circle.area(double radius) : this(pow(radius, 2) * pi);
}
