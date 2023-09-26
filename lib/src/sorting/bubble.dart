import 'package:algodart/src/utility/typedef.dart';

/// Bubble sort
///
/// Description:
/// EN
///   Iterative sorting algorithm that imitates the movement of bubbles in sparkling water.
///   The bubbles represents the elements of the data structure.
///   The bigger bubbles reach the top faster than smaller bubbles,
///   and this algorithm works in the same way. It iterates through the data structure
///   and for each cycle compares the current element with the next one,
///   swapping them if they are in the wrong order.
/// RU
///   Итерационный алгоритм сортировки, имитирующий движение пузырьков в газированной воде.
///   Пузырьки представляют элементы структуры данных.
///   Пузыри большего размера достигают вершины быстрее, чем пузыри меньшего размера,
///   и этот алгоритм работает одинаково.
///   Он перебирает структуру данных и для каждого цикла сравнивает текущий элемент со следующим,
///   меняя их местами, если они расположены в неправильном порядке.
///
/// Where to use:
/// EN
///   Sort of numbers or strings.
/// RU
///   Сортировка чисел или строк.
///
/// Сomplexity:
///   Average Complexity - O(N^2)
///   Best Case - O(N)
///   Worst Case - O(N^2)
///   Space Complexity - O(1)

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
