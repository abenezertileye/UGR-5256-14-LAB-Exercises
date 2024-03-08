import 'dart:io';

void main() {
  // Create an empty shopping cart (Map)
  Map<String, int> shoppingCart = {};

  // Add items to the shopping cart
  addToCart(shoppingCart, 'Apple', 2);
  addToCart(shoppingCart, 'Banana', 3);
  addToCart(shoppingCart, 'Orange', 1);

  // Print the contents of the shopping cart
  print('Shopping Cart Contents:');
  printCart(shoppingCart);

  // Calculate and print the total price of items in the cart
  double totalPrice = calculateTotalPrice(shoppingCart);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  // Remove an item from the cart
  removeFromCart(shoppingCart, 'Banana');

  // Print the updated contents of the shopping cart
  print('\nUpdated Shopping Cart Contents:');
  printCart(shoppingCart);

  // Calculate and print the total price again
  totalPrice = calculateTotalPrice(shoppingCart);
  print('Updated Total Price: \$${totalPrice.toStringAsFixed(2)}');
}

// Function to add an item to the shopping cart
void addToCart(Map<String, int> cart, String item, int quantity) {
  if (cart.containsKey(item)) {
    // If the item is already in the cart, update its quantity
    cart[item] = cart[item]! + quantity;
  } else {
    // If the item is not in the cart, add it with the specified quantity
    cart[item] = quantity;
  }
}

// Function to remove an item from the shopping cart
void removeFromCart(Map<String, int> cart, String item) {
  if (cart.containsKey(item)) {
    // If the item is in the cart, remove it
    cart.remove(item);
    print('$item removed from the cart.');
  } else {
    // If the item is not in the cart, print an error message
    print('$item is not in the cart.');
  }
}

// Function to calculate the total price of items in the shopping cart
double calculateTotalPrice(Map<String, int> cart) {
  double totalPrice = 0;
  cart.forEach((item, quantity) {
    // For each item in the cart, add its price to the total price
    totalPrice += getPrice(item) * quantity;
  });
  return totalPrice;
}

// Function to get the price of an item (just a placeholder)
double getPrice(String item) {
  // In a real application, you would look up the price of the item in a database or elsewhere
  // For simplicity, we'll just return a random price for demonstration purposes
  switch (item) {
    case 'Apple':
      return 0.5;
    case 'Banana':
      return 0.4;
    case 'Orange':
      return 0.6;
    default:
      return 0.0; // If the item is not recognized, assume zero price
  }
}

// Function to print the contents of the shopping cart
void printCart(Map<String, int> cart) {
  cart.forEach((item, quantity) {
    print('$item: $quantity');
  });
}
