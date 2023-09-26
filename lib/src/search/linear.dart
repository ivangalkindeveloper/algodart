import 'package:algodart/src/utility/typedef.dart';

/// Linear search
///
/// Description:
/// EN
///   Linear search of elements to find what you need.
/// RU
///   Линейный перебор элементов для поиска необходимого.
///
/// Where to use:
/// EN
///   Unsorted data or nonlinear data structure.
/// RU
///   Несортированные данные или нелинейные структуры данных.
///
/// Сomplexity:
///   O(N)

T? linearSearch<T>(
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
