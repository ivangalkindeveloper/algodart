import 'package:algodart/src/utility/typedef.dart';

/// Bubble sort
///
/// Description:
///   Bubble Sort is an iterative sorting algorithm that imitates the movement of bubbles in sparkling water.
///   The bubbles represents the elements of the data structure.
///   The bigger bubbles reach the top faster than smaller bubbles,
///   and this algorithm works in the same way. It iterates through the data structure
///   and for each cycle compares the current element with the next one,
///   swapping them if they are in the wrong order.
///
/// Order:
///   Average Complexity - O(N^2)
///   Best Case - O(N)
///   Worst Case - O(N^2)
///   Space Complexity - O(1)
///
/// Where to use:
///   Sort of numbers or strings.

void bubble<T>(
  List<T> list,
  DirectionTest test,
) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < (list.length - i - 1); j++) {
      final T value = list[j];
      final T next = list[j + 1];
      if (test(value, next)) {
        list[j] = next;
        list[j + 1] = value;
      }
    }
  }
}
