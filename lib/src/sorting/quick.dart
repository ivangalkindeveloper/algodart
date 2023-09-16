import 'package:algodart/src/utility/typedef.dart';

/// Quick sort
///
/// Description:
///   Quick Sort is a sorting algorithm based on splitting the data structure in smaller partitions
///   and sort them recursively until the data structure is sorted.
///   This division in partitions is done based on an element,
///   called pivot: all the elements bigger than the pivot get placed on the right side of the structure,
///   the smaller ones to the left, creating two partitions.
///   Next, this procedure gets applied recursively to the two partitions and so on.
///
/// Order:
///   Average Complexity - O(NlogN)
///   Best Case - O(NlogN)
///   Worst Case - O(N^2)
///   Space Complexity - O(N)
///
/// Where to use:
///

List<T> quick<T>(
  List<T> list,
  DirectionTest directionTest,
) {
  if (list.length <= 1) {
    return list;
  }

  final int pivotIndex = (list.length - 1) % 2;
  final T pivot = list[pivotIndex];
  final List<T> less = [];
  final List<T> greater = [];

  for (int i = 0; i < list.length; i++) {
    if (i == pivotIndex) {
      continue;
    }
    final T value = list[i];
    if (directionTest(pivot, value)) {
      less.add(value);
    } else {
      greater.add(value);
    }
  }

  return [
    ...quick(less, directionTest),
    pivot,
    ...quick(greater, directionTest),
  ];
}
