abstract class IGraphNode<T> {
  const IGraphNode();

  abstract final T value;
  abstract final List<GraphNode<T>> connections;

  void addConnection(
    GraphNode<T> node,
  );

  void removeConnection(
    GraphNode<T> node,
  );
}

class GraphNode<T> implements IGraphNode<T> {
  GraphNode(
    this.value, {
    List<GraphNode<T>>? connections,
  }) : connections = connections ?? [];

  @override
  final T value;
  @override
  final List<GraphNode<T>> connections;

  @override
  void addConnection(
    GraphNode<T> node,
  ) =>
      this.connections.add(node);

  @override
  void removeConnection(
    GraphNode<T> node,
  ) =>
      this.connections.remove(node);
}
