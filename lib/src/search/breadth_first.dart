import 'package:algodart/src/data/graph_node.dart';
import 'package:algodart/src/sctucture/queue.dart';
import 'package:algodart/src/utility/typedef.dart';

/// Breadth first search
///
/// Description:
/// EN
///   Breadth First Search (BFS) algorithm is one of the basic graph traversal algorithms.
///   It allows you to find all graph vertices reachable from a given starting vertex
///   and determine their distance from the starting vertex. The BFS process begins by selecting a starting vertex.
///   Then, all vertices adjacent to it are marked as “visited” and added to the queue.
///   Then, the vertex is removed from the queue and all of its unvisited adjacent vertices are added to the queue.
///   This process is repeated until the queue is empty.
/// RU
///   Алгоритм поиска в ширину (BFS) является одним из основных алгоритмов обхода графа.
///   Он позволяет найти все вершины графа, достижимые из заданной стартовой вершины,
///   и определить их расстояние от стартовой вершины.
///   Процесс BFS начинается с выбора стартовой вершины.
///   Затем, все смежные с ней вершины помечаются как "посещенные" и добавляются в очередь.
///   Затем, вершина извлекается из очереди и все ее непосещенные смежные вершины добавляются в очередь.
///   Этот процесс повторяется, пока очередь не станет пустой.
///
/// Where to use:
/// EN
///   One application is finding the shortest path in an unweighted graph.
/// RU
///   Одно из применений - поиск кратчайшего пути в невзвешенном графе.
///
/// Сomplexity:
///   O(V + E), where V is the number of vertices in the graph and E is the number of edges.

T? breadthFirst<T>(
  GraphNode<T> node,
  EqualityTest test,
) {
  final Queue<GraphNode<T>> nodes = Queue<GraphNode<T>>();
  final Set<GraphNode<T>> seens = {};

  nodes.enqueue(node);
  seens.add(node);

  while (nodes.isNotEmpty) {
    final GraphNode<T> currentNode = nodes.dequeue();
    if (test(currentNode.value)) {
      return currentNode.value;
    }

    seens.add(currentNode);
    for (final GraphNode<T> node in currentNode.connections) {
      if (seens.contains(node) == false) {
        nodes.enqueue(node);
      }
    }
  }

  return null;
}
