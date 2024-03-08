class Person {
  String fullName;
  int personAge;
  String personAddress;

  Person(String name, int age, String address) {
    this.fullName = name;
    this.personAge = age;
    this.personAddress = address;
  }
}

void main() {
  Person person1 = Person("John Doe", 25, "123 Main Street");

  print("Name: ${person1.fullName}");
  print("Age: ${person1.personAge}");
  print("Address: ${person1.personAddress}");

  person1.personAge = 30;
  person1.personAddress = "456 Elm Street";

  print("Modified Age: ${person1.personAge}");
  print("Modified Address: ${person1.personAddress}");
}
