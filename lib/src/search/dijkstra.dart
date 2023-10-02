import 'package:algodart/src/sctucture/queue.dart';
import 'package:algodart/src/data/vertex.dart';

/// Определяет самый жешевый путь
/// Корректно работает рабоате только если все веса неотрицательные
/// Корректно работает если нет цикличных связей
/// То есть работает только блять DAG

Map<T, num> dijkstra<T>(
  List<Vertex<T>> vertices,
  Vertex<T> start,
  T destination,
) {
  final Map<T, Vertex<T>> keyVertices = {};
  final Map<T, num> distances = {};

  for (Vertex<T> vertex in vertices) {
    keyVertices[vertex.key] = vertex;
    distances[vertex.key] = double.infinity;
  }

  distances[start.key] = 0;
  final Queue<(T, num)> queue = Queue<(T, num)>(
    data: (start.key, 0),
  );

  while (queue.isNotEmpty) {
    final (T currentKey, num currentDistance) = queue.dequeue();

    if (distances[currentKey] != null &&
        distances[currentKey]! > currentDistance) {
      continue;
    }

    for (MapEntry<T, num> edge in keyVertices[currentKey]!.edges.entries) {
      final T edgeKey = edge.key;
      final num edgeWeight = edge.value;
      final num distance = currentDistance + edgeWeight;
      if (distance < distances[edge.key]!) {
        distances[edgeKey] = distance;
        queue.enqueue((edgeKey, distance));
      }
    }
  }

  return distances;
}
