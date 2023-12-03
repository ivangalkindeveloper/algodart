import 'package:algodart/src/data/priority_node.dart';

abstract class IPriorityQueue<T> {
  void enqueue(
    T data,
    int priority,
  );

  T dequeue();
}

class PriorityQueue<T> implements IPriorityQueue<T> {
  PriorityQueue({
    T? data,
    int? priority,
  }) {
    if (data != null) {
      enqueue(
        data,
        priority ?? 0,
      );
    }
  }

  IPriorityNode<T>? _head;
  IPriorityNode<T>? _front;
  int _count = 0;

  @override
  void enqueue(
    T data,
    int priority,
  ) {
    final IPriorityNode<T> node = PriorityNode(
      value: data,
      priority: priority,
    );
    _count++;

    if (_head == null) {
      _front = node;
      _head = node;
    } else {
      _head!.next = _head;
      _head = node; // TODO ??
    }
  }

  @override
  T dequeue() {
    if (_head == null) {
      throw RangeError("Dequeue from empty queue");
    }

    _count--;
    final IPriorityNode temp = _front!;
    _front = _front?.next;
    if (_front == null) {
      _head = null;
    }
    return temp.value;
  }

  int get length => this._count;
}
