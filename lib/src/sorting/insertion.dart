import 'package:algodart/src/utility/typedef.dart';

/// Bubble sort
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
///   Best Case - O(N)
///   Worst Case - O(N^2)
///   Space Complexity - O(1)
///
/// Where to use:
///   Can be effective if the data is almost sorted.

void insertion<T>(
  List<T> list,
  DirectionTest test,
) {
  for (int i = 0; i < list.length; i++) {
    final T key = list[i];
    int j = i - 1;

    while (j >= 0 && test(key, list[j])) {
      list[j + 1] = list[j];
      j = j - 1;
    }
    list[j + 1] = key;
  }
}
