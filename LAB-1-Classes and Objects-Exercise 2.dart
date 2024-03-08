import 'LAB-1-Classes and Objects-Exercise 1.dart';

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(super.name, super.age, super.address, this.rollNumber, this.marks);

  int total(marks) {
    int total = 0;
    for (int i in marks) {
      total += i;
    }
    return total;
  }
}

void main() {
  Student student1 =
      Student('Ebisa', 21, 'Addis Ababa', 5, [80, 85, 90, 75, 88]);
  int totalMarks = student1.total([80, 85, 90, 75, 88]);
}
