import 'dart:math';

void main() {
  List<int> randomNumberList = List.generate(10, (index) => Random().nextInt(10));
  print('List of random numbers: $randomNumberList');

  Set<int> uniqueNumberSet = Set.from(randomNumberList);
  print('Unique numbers: $uniqueNumberSet');
}
