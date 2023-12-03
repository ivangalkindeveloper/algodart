abstract class IPriorityNode<T> {
  IPriorityNode();

  abstract final T value;
  abstract IPriorityNode<T>? next;
  abstract final int priority;
}

class PriorityNode<T> implements IPriorityNode<T> {
  PriorityNode({
    required this.value,
    this.next,
    required this.priority,
  });

  @override
  final T value;
  @override
  IPriorityNode<T>? next;
  @override
  final int priority;
}
