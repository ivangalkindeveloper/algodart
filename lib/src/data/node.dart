abstract class INode<T> {
  INode();

  abstract final T value;
  abstract INode<T>? next;
}

class Node<T> implements INode<T> {
  Node({
    required this.value,
    this.next,
  });

  @override
  final T value;
  @override
  INode<T>? next;
}
