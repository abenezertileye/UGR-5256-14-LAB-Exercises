import 'dart:io';

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  // Method to update the objects's address
  void updateAddress(String newAddress) {
    address = newAddress;
  }
}

void main() {
  Person person1 = Person('Abenezer', 21, 'Addis Ababa');
  Person person2 = Person('Bekele', 30, 'Addis Ababa');
  // Access and modify the address of person1
  person1.updateAddress('Bahirdar');
}
