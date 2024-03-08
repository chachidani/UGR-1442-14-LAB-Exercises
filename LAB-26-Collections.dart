class Student {
  String studentName;
  List<int> studentMarks;

  Student(this.studentName, this.studentMarks);

  double calculateAverageMark() {
    if (studentMarks.isEmpty) {
      return 0.0;
    }
    int sum = studentMarks.reduce((value, element) => value + element);
    return sum / studentMarks.length;
  }
}

void main() {
  Student john = Student('John', [80, 90, 75, 85, 95]);
  double averageMark = john.calculateAverageMark();
  print('Average mark for ${john.studentName}: $averageMark');
}
