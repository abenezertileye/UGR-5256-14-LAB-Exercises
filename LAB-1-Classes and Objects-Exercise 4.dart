class Product {
  String name;
  int price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  int cost(price, quantity) {
    return price * quantity;
  }
}

void main() {
  Product p1 = Product('car', 1000, 20);
  print(p1.cost(10, 20));
}
