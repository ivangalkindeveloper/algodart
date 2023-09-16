class BinaryTreeNode<T> {
  BinaryTreeNode({
    required this.value,
    this.left,
    this.right,
  });

  final T value;
  BinaryTreeNode<T>? left;
  BinaryTreeNode<T>? right;
}
