import 'package:algodart/src/utility/typedef.dart';

/// Linear search
///
/// Description:
///   Simple iteration of elements in search of the desired.
///
/// Order:
///   O(N)
///
/// Where to use:
///   Unsorted data.

T? linear<T>(
  List<T> list,
  T search,
  EqualityTest test,
) {
  for (int i = 0; i < list.length; i++) {
    final T value = list[i];
    if (test(value)) {
      return value;
    }
  }
  return null;
}
