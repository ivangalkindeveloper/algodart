import 'package:algodart/src/data/graph_node.dart';
import 'package:algodart/src/sctucture/stack.dart';
import 'package:algodart/src/utility/typedef.dart';

/// Depth first search
///
/// Description:
/// EN
///   Depth First Search (DFS) algorithm is also one of the main graph traversal algorithms.
///   Unlike the breadth-first search algorithm, which explores all adjacent vertices
///   before moving on to the next level, the DFS algorithm explores one vertex until it is completely explored,
///   and then moves on to the next unvisited vertex.
/// RU
///   Алгоритм поиска в глубину (DFS) также является одним из основных алгоритмов обхода графа.
///   В отличие от алгоритма поиска в ширину, который исследует все смежные вершины перед переходом к следующей уровню,
///   алгоритм DFS исследует одну вершину до ее полного исследования, а затем переходит к следующей непосещенной вершине.
///
/// Where to use:
/// EN
///   One application is finding the shortest path in an unweighted graph.
/// RU
///   Одно из применений - поиск кратчайшего пути в невзвешенном графе.
///
/// Сomplexity:
///   O(V + E), where V is the number of vertices in the graph and E is the number of edges.

T? depthFirst<T>(
  GraphNode<T> node,
  EqualityTest test,
) {
  final Stack<GraphNode<T>> nodes = Stack<GraphNode<T>>();
  final Set<GraphNode<T>> seens = {};

  nodes.push(node);
  seens.add(node);

  while (nodes.isNotEmpty) {
    final GraphNode<T> currentNode = nodes.pop();
    if (test(currentNode.value)) {
      return currentNode.value;
    }

    seens.add(currentNode);
    for (final GraphNode<T> node in currentNode.connections) {
      if (seens.contains(node) == false) {
        nodes.push(node);
      }
    }
  }

  return null;
}
