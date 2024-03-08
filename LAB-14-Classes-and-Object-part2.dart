abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double circleRadius;

  Circle(this.circleRadius);

  @override
  double calculateArea() {
    return 3.14159 * circleRadius * circleRadius;
  }
}

class Square extends Shape {
  double squareSide;

  Square(this.squareSide);

  @override
  double calculateArea() {
    return squareSide * squareSide;
  }
}

void main() {
  Circle circle = Circle(5);
  double circleArea = circle.calculateArea();

  Square square = Square(4);
  double squareArea = square.calculateArea();

  print("Circle Area: $circleArea");
  print("Square Area: $squareArea");
}
