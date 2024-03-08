import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double area() {
    return side * side;
  }
}

void main() {
  Circle c1 = Circle(6);
  print(c1.area());
  Square s1 = Square(6);
  print(s1.area());
}
