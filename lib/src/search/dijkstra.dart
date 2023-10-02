import 'package:algodart/src/sctucture/queue.dart';
import 'package:algodart/src/data/vertex.dart';

/// Dijkstra's algorithm
///
/// Description:
/// EN
///   Dijkstra's algorithm is an algorithm for finding the shortest path from one vertex
///   to all other vertices in a weighted graph. It only works with non-negative edge weights.
///   The process of Dijkstra's algorithm begins with the selection of a starting vertex.
///   Then, for each vertex in the graph, the algorithm maintains a current minimum path length
///   from the starting vertex to that vertex. Initially, for all vertices except the starting one,
///   this length is set to infinity.
///   Dijkstra's algorithm uses a priority queue data structure to store the vertices to be visited.
///   At the beginning, the starting vertex is added to the priority queue with path length equal to 0.
///   Then, until the queue is empty, the vertex with the shortest path length is removed from the queue.
///   For each adjacent vertex, the algorithm updates its path length if the new path length is less than the current one.
///   This vertex is then added to the priority queue with the new path length.
///   Dijkstra's algorithm continues this process until all vertices have been visited
///   or until the target vertex is reached (if one wants to find the shortest path to a specific vertex).
///   Upon completion of Dijkstra's algorithm, for each vertex its minimum path length
///   from the starting vertex will be known, as well as the previous vertex on this path.
///   This allows you to reconstruct the shortest path from the starting vertex to any other vertex in the graph.
/// RU
///   Алгоритм Дейкстры - это алгоритм для нахождения кратчайшего пути от одной вершины до всех остальных вершин во взвешенном графе.
///   Он работает только с неотрицательными весами ребер.
///   Процесс алгоритма Дейкстры начинается с выбора стартовой вершины. Затем, для каждой вершины в графе,
///   алгоритм поддерживает текущую минимальную длину пути от стартовой вершины до этой вершины.
///   Изначально, для всех вершин, кроме стартовой, эта длина устанавливается как бесконечность.
///   Алгоритм Дейкстры использует структуру данных "очередь с приоритетом" для хранения вершин, которые нужно посетить.
///   В начале, стартовая вершина добавляется в очередь с приоритетом с длиной пути равной 0.
///   Затем, пока очередь не станет пустой, извлекается вершина с наименьшей длиной пути из очереди.
///   Для каждой смежной вершины, алгоритм обновляет ее длину пути, если новая длина пути меньше текущей.
///   Затем, эта вершина добавляется в очередь с приоритетом с новой длиной пути.
///   Алгоритм Дейкстры продолжает этот процесс, пока все вершины не будут посещены или пока не будет достигнута целевая вершина
///   (если требуется найти кратчайший путь до определенной вершины).
///   По завершении алгоритма Дейкстры, для каждой вершины будет известна ее минимальная длина пути от стартовой вершины,
///   а также предыдущая вершина на этом пути. Это позволяет восстановить кратчайший путь от стартовой вершины до любой другой вершины в графе.
///
/// Requirements:
/// EN
///   Works correctly only for a directed weighted acyclic graph (DAG).
/// RU
///   Работает корректно только для направленного взвешенного ацикличного графа (DAG).
///
/// Сomplexity:
///   O((V + E) log V), where V is the number of vertices in the graph and E is the number of edges.

Map<IVertex<T>, num> dijkstra<T>(
  List<IVertex<T>> vertices,
  Vertex<T> start,
  T destination,
) {
  final Map<IVertex<T>, num> distances = {};

  for (IVertex<T> vertex in vertices) {
    distances[vertex] = double.infinity;
  }

  distances[start] = 0;
  final Queue<(IVertex<T>, num)> queue = Queue<(IVertex<T>, num)>(
    data: (start, 0),
  );

  while (queue.isNotEmpty) {
    final (IVertex<T> currentVertex, num currentDistance) = queue.dequeue();

    if (distances[currentVertex] != null &&
        distances[currentVertex]! > currentDistance) {
      continue;
    }

    for (MapEntry<IVertex<T>, num> edge in currentVertex.edges.entries) {
      final IVertex<T> vertex = edge.key;
      final num vertexWeight = edge.value;
      final num distance = currentDistance + vertexWeight;
      if (distance < distances[edge.key]!) {
        distances[vertex] = distance;
        queue.enqueue((vertex, distance));
      }
    }
  }

  return distances;
}
