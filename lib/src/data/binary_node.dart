class BinaryNode<T> {
  BinaryNode({
    required this.value,
    this.left,
    this.right,
  });

  final T value;
  BinaryNode<T>? left;
  BinaryNode<T>? right;
}
