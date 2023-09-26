class GraphNode<T> {
  GraphNode(
    this.value, {
    List<GraphNode<T>>? connections,
  }) : connections = connections ?? [];

  final T value;
  final List<GraphNode<T>> connections;

  void addConnection(
    GraphNode<T> node,
  ) =>
      this.connections.add(node);

  void removeConnection(
    GraphNode<T> node,
  ) =>
      this.connections.remove(node);
}
