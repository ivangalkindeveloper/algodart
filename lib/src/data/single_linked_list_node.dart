class SingleLinkedListNode<T> {
  SingleLinkedListNode({
    required this.value,
    this.next,
  });

  final T value;
  SingleLinkedListNode<T>? next;
}
