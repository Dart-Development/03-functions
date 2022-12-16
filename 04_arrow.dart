main() {
  int a = 10, b = 20;
  int result = sum(a, b);
  int resultArrow = arrowSum(a, b);

  List<int> list = [1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 10, 1];

  // functions within an object or class are calles methods
  // var newList = list.where((num) {
  //   return num > 4;
  // });

  // Iterable is an element that can be swiped on a for cycle or on a sequencial manner
  // () iterable
  // {} set
  /// [] list
  var newList = list.where((num) => num > 4);

  // print('Result: $result');
  // print('Arrow Result: $resultArrow');
  print(newList.toSet().toList());
}

int sum(int x, int y) {
  return x + y;
}

int arrowSum(int x, int y) => x + y;
