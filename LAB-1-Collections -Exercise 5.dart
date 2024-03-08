class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }
    return marks.reduce((value, element) => value + element) / marks.length;
  }
}

void main() {
  Student student1 = Student('Alice', [80, 85, 90, 75, 88]);

  double averageMark = student1.calculateAverageMark();
  print('${student1.name}\'s average mark: $averageMark');
}
