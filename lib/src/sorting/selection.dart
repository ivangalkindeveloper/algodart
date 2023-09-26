import 'package:algodart/src/utility/typedef.dart';

/// Selection sort
///
/// Description:
/// EN
///   The algorithm divides the data structure in two sublists: a sorted one, and one still to sort.
///   Initially, the sorted sublist is made up of just one element and it gets progressively filled.
///   For every iteration, the algorithm picks an element on the unsorted sublist and inserts it
///   at the right place in the sorted sublist.
/// EN
///   Алгоритм делит структуру данных на два подсписка: отсортированный и еще не отсортированный.
///   Первоначально отсортированный подсписок состоит всего из одного элемента и постепенно заполняется.
///   На каждой итерации алгоритм выбирает элемент в несортированном подсписке
///   и вставляет его в нужное место в отсортированном подсписке.
///
/// Where to use:
/// EN
///
/// RU
///
/// Сomplexity:
///   Average Complexity - O(N^2)
///   Best Case - O(N^2)
///   Worst Case - O(N^2)
///   Space Complexity - O(1)

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
