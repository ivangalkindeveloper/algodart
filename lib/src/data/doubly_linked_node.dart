class DoublyLinkedNode<T> {
  DoublyLinkedNode({
    required this.value,
    required this.previos,
    this.next,
  });

  final T value;
  DoublyLinkedNode<T> previos;
  DoublyLinkedNode<T>? next;
}
