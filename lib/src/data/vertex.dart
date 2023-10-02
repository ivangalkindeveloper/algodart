abstract class IVertex<T> {
  abstract final T key;
  abstract final Map<IVertex<T>, num> edges;

  void addEdge(
    IVertex<T> vertex, {
    num weight = 0,
  });

  void addAllEdges(
    Map<IVertex<T>, num> edges,
  );

  void removeEdge(
    IVertex<T> vertex,
  );

  num? weightEgde(
    IVertex<T> vertex,
  );
}

class Vertex<T> implements IVertex<T> {
  Vertex(
    this.key, {
    Map<IVertex<T>, num>? edges,
  }) : edges = edges ?? {};

  @override
  final T key;
  @override
  final Map<IVertex<T>, num> edges;

  @override
  void addEdge(
    IVertex<T> vertex, {
    num weight = 0,
  }) =>
      this.edges[vertex] = weight;

  @override
  void addAllEdges(
    Map<IVertex<T>, num> edges,
  ) =>
      this.edges.addAll(edges);

  @override
  void removeEdge(
    IVertex<T> vertex,
  ) =>
      this.edges.remove(vertex);

  @override
  num? weightEgde(
    IVertex<T> vertex,
  ) =>
      this.edges[vertex];
}
