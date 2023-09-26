import 'package:algodart/src/sctucture/nodable.dart';
import 'package:algodart/src/data/node.dart';

abstract class IQueue<T> {
  void enqueue(T data);

  T dequeue();
}

class Queue<T> extends Nodeble<T> implements IQueue<T> {
  Queue({
    T? data,
  }) {
    if (data != null) {
      front = Node(
        value: data,
      );
      head = Node(
        value: data,
      );
      count = 1;
    }
  }

  Node<T>? front;
  int count = 0;

  @override
  void enqueue(T data) {
    final Node<T> node = Node(
      value: data,
    );
    count++;

    if (head == null) {
      front = node;
      head = node;
    } else {
      head!.next = head;
      head = node; // TODO ??
    }
  }

  @override
  T dequeue() {
    if (head == null) {
      throw RangeError("Dequeue from empty queue");
    }

    count--;
    final Node temp = front!;
    front = front?.next;
    if (front == null) {
      head = null;
    }
    return temp.value;
  }

  @override
  get length => this.count;
}
