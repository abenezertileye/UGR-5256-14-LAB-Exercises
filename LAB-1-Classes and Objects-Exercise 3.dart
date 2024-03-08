class Rectangle {
  int width;
  int height;

  Rectangle(this.width, this.height);

  int area(width, height) {
    return width * height;
  }

  int perimeter(width, height) {
    return (width + height) * 2;
  }
}

void main() {
  Rectangle r1 = Rectangle(10, 20);
  print(r1.area(10, 20));
  print(r1.perimeter(10, 20));
}
