class DoublyLinkedListNode<T> {
  DoublyLinkedListNode({
    required this.value,
    required this.previos,
    this.next,
  });

  final T value;
  DoublyLinkedListNode<T> previos;
  DoublyLinkedListNode<T>? next;
}
