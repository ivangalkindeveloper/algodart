abstract class IVertex<T> {
  abstract final T key;
  abstract final Map<T, num> edges;

  void addEdge(
    T key, {
    num weight = 0,
  });

  void addAllEdges(
    Map<T, num> edges,
  );

  void removeEdge(
    T key,
  );

  num? weightEgde(
    T key,
  );
}

class Vertex<T> implements IVertex<T> {
  Vertex(
    this.key, {
    Map<T, num>? edges,
  }) : edges = edges ?? {};

  @override
  final T key;
  @override
  final Map<T, num> edges;

  @override
  void addEdge(
    T key, {
    num weight = 0,
  }) =>
      this.edges[key] = weight;

  @override
  void addAllEdges(
    Map<T, num> edges,
  ) =>
      this.edges.addAll(edges);

  @override
  void removeEdge(
    T key,
  ) =>
      this.edges.remove(key);

  @override
  num? weightEgde(
    T key,
  ) =>
      this.edges[key];
}
