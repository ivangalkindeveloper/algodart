class Vertex<T> {
  Vertex(
    this.value, {
    Map<Vertex<T>, int>? connections,
  }) : connections = connections ?? {};

  final T value;
  final Map<Vertex<T>, int> connections;

  void addConnection(
    Vertex<T> node, {
    int weight = 0,
  }) =>
      this.connections[node] = weight;

  void removeConnection(
    Vertex<T> node,
  ) =>
      this.connections.remove(node);

  int? getWeight(
    Vertex<T> node,
  ) =>
      this.connections[node];
}
