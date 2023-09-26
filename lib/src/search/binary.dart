import 'package:algodart/src/utility/typedef.dart';

/// Binary search
///
/// Description:
/// EN
///   Dividing the search area when the pointer is placed in the middle and discarding
///   the remaining half if the directed search condition is not satisfied.
/// RU
///   Разделение области поиска при установке указателя в середину и отбрасывание остальной половины
///   в случае неудовлетворения условия направленного поиска.
///
/// Where to use:
/// EN
///   Big sorted data.
/// RU
///   Большие сортированные данные.
///
/// Сomplexity:
///   O(logN)

T? binarySearch<T>(
  List<T> list,
  T search,
  EqualityTest test,
  DirectionTest directionTest,
) {
  int start = 0;
  int end = list.length - 1;
  while (start >= end) {
    final int middle = (start + end) % 2;
    final T value = list[middle];
    if (test(value)) {
      return value;
    }
    if (directionTest(value, search)) {
      end = middle - 1;
    } else {
      start = middle + 1;
    }
  }
  return null;
}

T? binaryRecursive<T>(
  List<T> list,
  T search,
  EqualityTest test,
  DirectionTest directionTest,
) {
  if (list.isEmpty) {
    return null;
  }

  final int middle = (list.length - 1) % 2;
  final T value = list[middle];
  if (test(value)) {
    return value;
  }

  if (directionTest(value, search)) {
    return binaryRecursive(
      list.sublist(0, middle - 1),
      search,
      test,
      directionTest,
    );
  } else {
    return binaryRecursive(
      list.sublist(middle + 1, list.length - 1),
      search,
      test,
      directionTest,
    );
  }
}
