class Person {
  late String fullName;
  late int personAge;
  late String personAddress;

  Person(this.fullName, this.personAge, this.personAddress);
}

class Student extends Person {
  late int studentRollNumber;
  late List<int> studentMarks;

  Student(String fullName, int personAge, String personAddress, this.studentRollNumber, this.studentMarks)
      : super(fullName, personAge, personAddress);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in studentMarks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    double average = total / studentMarks.length;
    return average;
  }
}

void main() {
  List<int> marksList = [80, 90, 85, 95, 92];
  Student student1 = Student("John Doe", 18, "123 Main Street", 12345, marksList);

  print("Name: ${student1.fullName}");
  print("Age: ${student1.personAge}");
  print("Address: ${student1.personAddress}");
  print("Roll Number: ${student1.studentRollNumber}");
  print("Marks: ${student1.studentMarks}");

  int totalMarks = student1.calculateTotalMarks();
  double averageMarks = student1.calculateAverageMarks();

  print("Total Marks: $totalMarks");
  print("Average Marks: $averageMarks");
}
