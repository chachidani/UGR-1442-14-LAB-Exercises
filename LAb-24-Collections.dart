void main() {
  Map<String, int> studentMarksMap = {};

  // Add entries to the map
  studentMarksMap['John'] = 85;
  studentMarksMap['Emma'] = 92;
  studentMarksMap.putIfAbsent('Sarah', () => 78);

  // Iterate over the map
  studentMarksMap.forEach((name, marks) {
    print('$name: $marks');
  });

  // Check if a key exists
  bool hasMarkForJohn = studentMarksMap.containsKey('John');
  print('Does the map contain a mark for John? $hasMarkForJohn');
}
