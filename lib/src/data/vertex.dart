abstract class IVertex<T> {
  abstract final T key;
  abstract final Map<T, int> edges;

  void addEdge(
    Vertex<T> vertex, {
    int weight = 0,
  });

  void removeEdge(
    IVertex<T> vertex,
  );

  int? weightEgde(
    IVertex<T> vertex,
  );
}

class Vertex<T> implements IVertex<T> {
  Vertex(
    this.key, {
    Map<T, int>? edges,
  }) : edges = edges ?? {};

  @override
  final T key;
  @override
  final Map<T, int> edges;

  @override
  void addEdge(
    Vertex<T> vertex, {
    int weight = 0,
  }) =>
      this.edges[vertex.key] = weight;

  @override
  void removeEdge(
    IVertex<T> vertex,
  ) =>
      this.edges.remove(vertex.key);

  @override
  int? weightEgde(
    IVertex<T> vertex,
  ) =>
      this.edges[vertex.key];
}
