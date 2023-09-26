import 'package:algodart/src/utility/typedef.dart';

/// Insertion sort
///
/// Description:
/// EN
///   The algorithm divides the data structure in two sublists: a sorted one, and one still to sort.
///   Initially, the sorted sublist is made up of just one element and it gets progressively filled.
///   For every iteration, the algorithm picks an element on the unsorted sublist and inserts it
///   at the right place in the sorted sublist.
/// RU
///   Алгоритм делит структуру данных на два подсписка: отсортированный и еще не отсортированный.
///   Первоначально отсортированный подсписок состоит всего из одного элемента и постепенно заполняется.
///   На каждой итерации алгоритм выбирает элемент в несортированном подсписке
///   и вставляет его в нужное место в отсортированном подсписке.
///
/// Where to use:
/// EN
///   Can be effective if the data is almost sorted.
/// RU
///   Может быть эффективна, если данные почти отсортированы.
///
/// Сomplexity:
///   Average Complexity - O(N^2)
///   Best Case - O(N)
///   Worst Case - O(N^2)
///   Space Complexity - O(1)

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
