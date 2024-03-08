void main() {
  List<String> hobbiesList = [];

  // Add hobbies
  hobbiesList.add('Reading');
  hobbiesList.add('Painting');
  hobbiesList.add('Gardening');

  print('List of hobbies: $hobbiesList');

  // Remove a hobby
  hobbiesList.remove('Painting');
  print('Updated list after removing a hobby: $hobbiesList');

  // Sort the list
  hobbiesList.sort();
  print('Sorted list of hobbies: $hobbiesList');

  // Check if the list is empty
  bool isHobbiesListEmpty = hobbiesList.isEmpty;
  print('Is the list empty? $isHobbiesListEmpty');
}
