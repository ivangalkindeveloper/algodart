class GraphNode<T> {
  GraphNode({
    required this.key,
    required this.value,
  });

  final int key;
  final T value;

  final List<GraphNode<T>> _connections = [];
  void addLink(GraphNode<T> node) => this._connections.add(node);
  void removeLink(GraphNode<T> node) => this._connections.remove(node);
}
