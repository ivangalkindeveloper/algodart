abstract class IDoublyLinkedNode<T> {
  IDoublyLinkedNode();

  abstract final T value;
  abstract IDoublyLinkedNode<T> previos;
  abstract IDoublyLinkedNode<T>? next;
}

class DoublyLinkedNode<T> implements IDoublyLinkedNode<T> {
  DoublyLinkedNode({
    required this.value,
    required this.previos,
    this.next,
  });

  @override
  final T value;
  @override
  IDoublyLinkedNode<T> previos;
  @override
  IDoublyLinkedNode<T>? next;
}
