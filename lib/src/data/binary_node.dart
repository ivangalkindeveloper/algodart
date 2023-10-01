abstract class IBinaryNode<T> {
  IBinaryNode();

  abstract final T value;
  abstract IBinaryNode<T>? left;
  abstract IBinaryNode<T>? right;
}

class BinaryNode<T> implements IBinaryNode<T> {
  BinaryNode({
    required this.value,
    this.left,
    this.right,
  });

  @override
  final T value;
  @override
  IBinaryNode<T>? left;
  @override
  IBinaryNode<T>? right;
}
