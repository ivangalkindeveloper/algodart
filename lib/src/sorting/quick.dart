import 'package:algodart/src/utility/typedef.dart';

/// Quick sort
///
/// Description:
/// EN
///   Quick Sort is a sorting algorithm based on splitting the data structure in smaller partitions
///   and sort them recursively until the data structure is sorted.
///   This division in partitions is done based on an element,
///   called pivot: all the elements bigger than the pivot get placed on the right side of the structure,
///   the smaller ones to the left, creating two partitions.
///   Next, this procedure gets applied recursively to the two partitions and so on.
/// RU
///   Алгоритм основан на разбиении структуры данных на более мелкие части
///   и их рекурсивной сортировке до тех пор, пока структура данных не будет отсортирована.
///   Такое разделение на разделы осуществляется на основе элемента, называемого центром:
///   все элементы, размер которых больше, чем центр, размещаются на правой стороне структуры,
///   а меньшие - слева, образуя два раздела.
///   Затем эта процедура рекурсивно применяется к двум разделам и так далее.
///
/// Where to use:
/// EN
///
/// RU
///
/// Сomplexity:
///   Average Complexity - O(NlogN)
///   Best Case - O(NlogN)
///   Worst Case - O(N^2)
///   Space Complexity - O(N)

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
    ...quick(
      less,
      directionTest,
    ),
    pivot,
    ...quick(
      greater,
      directionTest,
    ),
  ];
}
