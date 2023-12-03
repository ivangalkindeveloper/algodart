import 'package:algodart/src/utility/nodable.dart';
import 'package:algodart/src/data/node.dart';

abstract class IQueue<T> {
  void enqueue(
    T data,
  );

  T dequeue();
}

class Queue<T> extends Nodeble<T> implements IQueue<T> {
  Queue({
    T? data,
  }) {
    if (data != null) {
      enqueue(
        data,
      );
    }
  }

  int _count = 0;

  @override
  void enqueue(
    T data,
  ) {
    final INode<T> node = Node(
      value: data,
    );
    _count++;

    if (head == null) {
      head = node;
    } else {
      INode<T>? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = Node(
        value: data,
      );
    }
  }

  @override
  T dequeue() {
    if (head == null) {
      throw RangeError("Dequeue from empty queue");
    }

    _count--;
    final INode temp = head!;
    head = head?.next;
    return temp.value;
  }

  @override
  int get length => this._count;
}
