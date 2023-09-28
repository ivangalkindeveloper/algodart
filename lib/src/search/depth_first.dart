import 'package:algodart/src/data/graph_node.dart';
import 'package:algodart/src/sctucture/stack.dart';
import 'package:algodart/src/utility/typedef.dart';

T? depthFirstSearch<T>(
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
