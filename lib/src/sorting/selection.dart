import 'package:algodart/src/utility/typedef.dart';

/// Selection sort
///
/// Description:
///   The algorithm divides the data structure in two sublists: a sorted one, and one still to sort.
///   Initially, the sorted sublist is made up of just one element and it gets progressively filled.
///   For every iteration, the algorithm picks an element on the unsorted sublist and inserts it
///   at the right place in the sorted sublist.
///
///
///
/// Order:
///   Average Complexity - O(N^2)
///   Best Case - O(N^2)
///   Worst Case - O(N^2)
///   Space Complexity - O(1)
///
/// Where to use:
///

void selection<T>(
  List<T> list,
  DirectionTest directionTest,
) {
  for (int i = 0; i < list.length; i++) {
    int minimum = i;
    for (int j = 0; j < list.length; j++) {
      if (directionTest(list[j], list[minimum])) {
        minimum = j;
      }
    }

    final T temp = list[i];
    list[i] = list[minimum];
    list[minimum] = temp;
  }
}
