import 'package:algodart/src/data/graph_node.dart';
import 'package:algodart/src/sctucture/queue.dart';
import 'package:algodart/src/utility/typedef.dart';

T? breadthFirstSearch<T>(
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
