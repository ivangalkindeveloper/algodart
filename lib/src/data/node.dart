class Node<T> {
  Node({
    required this.value,
    this.next,
  });

  final T value;
  Node<T>? next;
}
