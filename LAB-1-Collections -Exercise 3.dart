void main() {
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 90);
  studentMarks.putIfAbsent('Charlie', () => 75);
  studentMarks.putIfAbsent('David', () => 88);

  print('Student Marks:');
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });

  String studentToCheck = 'Bob';
  if (studentMarks.containsKey(studentToCheck)) {
    print('$studentToCheck\'s mark: ${studentMarks[studentToCheck]}');
  } else {
    print('$studentToCheck not found in the map.');
  }
}
